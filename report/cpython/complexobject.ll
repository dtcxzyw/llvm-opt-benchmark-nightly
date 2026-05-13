inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@PyComplex_ImagAsDouble:bb.a
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.h, %bb.f, %PyObject_TypeCheck.exit.thread
  %.1 = phi double [ %i.d, %PyObject_TypeCheck.exit.thread ], [ 0.000000e+00, %bb.h ], [ -1.000000e+00, %bb.f ], [ -1.000000e+00, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ]
  ret double %.1
}

; Function Attrs: nounwind uwtable
define dso_local { double, double } @PyComplex_AsCComplex(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %.not.i19 = icmp eq ptr %.val, @PyComplex_Type
  br i1 %.not.i19, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyComplex_Type) #15
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %bb.b, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %0, i64 16
  %.sroa.016.0.copyload = load double, ptr %i.c, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %0, i64 24
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  br label %Py_DECREF.exit

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.d = tail call fastcc ptr @try_complex_special_method(ptr noundef nonnull %0) ; 6 uses
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload = load double, ptr %i.e, align 8, !tbaa !23 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.d, i64 24
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyErr_Occurred() #15
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.j = tail call double @PyFloat_AsDouble(ptr noundef nonnull %0) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.g, %PyObject_TypeCheck.exit.thread
  %.sroa.016.0 = phi double [ %.sroa.016.0.copyload, %PyObject_TypeCheck.exit.thread ], [ -1.000000e+00, %bb.f ], [ %i.j, %bb.g ], [ %.sroa.0.0.copyload, %bb.c ], [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.0.copyload, %bb.e ]
  %.sroa.5.0 = phi double [ %.sroa.5.0.copyload, %PyObject_TypeCheck.exit.thread ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ %.sroa.8.0.copyload, %bb.c ], [ %.sroa.8.0.copyload, %bb.d ], [ %.sroa.8.0.copyload, %bb.e ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal void @complex_dealloc(ptr noundef %0) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %.val4, @PyComplex_Type
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 11192    ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.e, 100
  br i1 %or.cond.i.i, label %_PyFreeList_Push.exit.i, label %bb.c

_PyFreeList_Push.exit.i:                          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 11184    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  store ptr %0, ptr %i.f, align 8, !tbaa !14
  %i.h = add nuw nsw i64 %i.e, 1
  store i64 %i.h, ptr %i.d, align 8, !tbaa !18
  br label %_PyFreeList_Free.exit

bb.c:                                             ; preds = %bb.b
  tail call void @PyObject_Free(ptr noundef nonnull %0) #15
  br label %_PyFreeList_Free.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val4, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  tail call void %i.j(ptr noundef nonnull %0) #15
  br label %_PyFreeList_Free.exit

_PyFreeList_Free.exit:                            ; preds = %bb.c, %_PyFreeList_Push.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @complex_repr(ptr noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %i.d = tail call double @llvm.copysign.f64(double 1.000000e+00, double %i.b)
  %i.e = fcmp oeq double %i.d, 1.000000e+00
  %or.cond = and i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !43
  %i.h = tail call ptr @PyOS_double_to_string(double noundef %i.g, i8 noundef signext 114, i32 noundef 0, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = tail call ptr @PyOS_double_to_string(double noundef %i.b, i8 noundef signext 114, i32 noundef 0, i32 noundef 0, ptr noundef null) #15 ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !43
  %i.n = tail call ptr @PyOS_double_to_string(double noundef %i.m, i8 noundef signext 114, i32 noundef 0, i32 noundef 1, ptr noundef null) #15 ; 2 uses
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.b
  %.025 = phi ptr [ null, %bb.b ], [ %i.j, %bb.f ]
  %.024 = phi ptr [ %i.h, %bb.b ], [ %i.n, %bb.f ] ; 2 uses
  %.023 = phi ptr [ @.str.4, %bb.b ], [ %i.j, %bb.f ]
  %.022 = phi ptr [ @.str.4, %bb.b ], [ @.str.5, %bb.f ]
  %.0 = phi ptr [ @.str.4, %bb.b ], [ @.str.6, %bb.f ]
  %i.p = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.7, ptr noundef nonnull %.022, ptr noundef nonnull %.023, ptr noundef nonnull %.024, ptr noundef nonnull %.0) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.027 = phi ptr [ %i.p, %bb.h ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ]
  %.126 = phi ptr [ %.025, %bb.h ], [ null, %bb.c ], [ %i.j, %bb.g ], [ null, %bb.e ]
  %.1 = phi ptr [ %.024, %bb.h ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ]
  tail call void @PyMem_Free(ptr noundef %.1) #15
  tail call void @PyMem_Free(ptr noundef %.126) #15
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define internal i64 @complex_hash(ptr noundef %0) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26
  %i.c = tail call i64 @_Py_HashDouble(ptr noundef %0, double noundef %i.b) #15 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call i64 @_Py_HashDouble(ptr noundef nonnull %0, double noundef %i.f) #15 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = mul i64 %i.g, 1000003
  %i.j = add i64 %i.i, %i.c
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.j, i64 -2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %spec.store.select, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i64 %.0
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind uwtable
define internal ptr @complex_richcompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.Py_complex, align 8         ; 12 uses
  %4 = alloca %struct.Py_complex, align 8         ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.c = add i32 %2, -4
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val27 = load ptr, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %.not.i28 = icmp eq ptr %.val27, @PyComplex_Type
  br i1 %.not.i28, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val27, ptr noundef nonnull @PyComplex_Type) #15
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %bb.c, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.b, %PyObject_TypeCheck.exit
  %i.f = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !45
  br label %real_to_complex.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !46
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, @PyFloat_Type
  br i1 %.not.i.i.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.c
  %i.h = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i.i, ptr noundef nonnull @PyFloat_Type) #15
  %.not8.i.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i.i, label %bb.d, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.c
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val6.i.i = load double, ptr %i.i, align 8, !tbaa !47
  store double %.val6.i.i, ptr %3, align 8, !tbaa !23
  br label %real_to_complex.exit

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %i.j = call i32 @_Py_convert_int_to_double(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #15
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %real_to_complex.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %Py_DECREF.exit

real_to_complex.exit:                             ; preds = %bb.d, %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.thread
  %i.m = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.m, align 8, !tbaa !19  ; 3 uses
  %i.n = getelementptr i8, ptr %.val, i64 168
  %.val23 = load i64, ptr %i.n, align 8, !tbaa !31
  %i.o = and i64 %.val23, 16777216
  %.not19 = icmp eq i64 %i.o, 0
  br i1 %.not19, label %bb.k, label %bb.f

bb.f:                                             ; preds = %real_to_complex.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = fcmp oeq double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.not53 = icmp eq i32 %2, 2
  br i1 %.not53, label %.split, label %.split17

bb.g:                                             ; preds = %bb.f
  %i.s = load double, ptr %3, align 8, !tbaa !49
  %i.t = call ptr @PyFloat_FromDouble(double noundef %i.s) #15 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call ptr @PyObject_RichCompare(ptr noundef nonnull %i.t, ptr noundef nonnull %1, i32 noundef %2) #15 ; 3 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.t, align 8, !tbaa !22
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #15
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %real_to_complex.exit
  %.not.i29 = icmp eq ptr %.val, @PyFloat_Type
  br i1 %.not.i29, label %PyObject_TypeCheck.exit30.thread, label %PyObject_TypeCheck.exit30

PyObject_TypeCheck.exit30:                        ; preds = %bb.k
  %i.z = call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyFloat_Type) #15
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.l, label %PyObject_TypeCheck.exit30.thread

PyObject_TypeCheck.exit30.thread:                 ; preds = %bb.k, %PyObject_TypeCheck.exit30
  %i.aa = load double, ptr %3, align 8, !tbaa !49
  %i.ab = call double @PyFloat_AsDouble(ptr noundef nonnull %1) #15
  %i.ac = fcmp oeq double %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fcmp oeq double %i.ae, 0.000000e+00
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br label %bb.o

bb.l:                                             ; preds = %PyObject_TypeCheck.exit30
  %.val25 = load ptr, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  %.not.i31 = icmp eq ptr %.val25, @PyComplex_Type
  br i1 %.not.i31, label %PyObject_TypeCheck.exit32.thread.thread, label %PyObject_TypeCheck.exit32

PyObject_TypeCheck.exit32.thread.thread:          ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  br label %PyObject_TypeCheck.exit34.thread

PyObject_TypeCheck.exit32:                        ; preds = %bb.l
  %i.ah = call i32 @PyType_IsSubtype(ptr noundef %.val25, ptr noundef nonnull @PyComplex_Type) #15
  %.not45 = icmp eq i32 %i.ah, 0
  br i1 %.not45, label %Py_DECREF.exit, label %PyObject_TypeCheck.exit32.thread

PyObject_TypeCheck.exit32.thread:                 ; preds = %PyObject_TypeCheck.exit32
  %.val24.pre = load ptr, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %.not.i33 = icmp eq ptr %.val24.pre, @PyComplex_Type
  br i1 %.not.i33, label %PyObject_TypeCheck.exit34.thread, label %PyObject_TypeCheck.exit34

PyObject_TypeCheck.exit34:                        ; preds = %PyObject_TypeCheck.exit32.thread
  %i.ai = call i32 @PyType_IsSubtype(ptr noundef %.val24.pre, ptr noundef nonnull @PyComplex_Type) #15
  %.not46 = icmp eq i32 %i.ai, 0
  br i1 %.not46, label %bb.m, label %PyObject_TypeCheck.exit34.thread

PyObject_TypeCheck.exit34.thread:                 ; preds = %PyObject_TypeCheck.exit32.thread.thread, %PyObject_TypeCheck.exit32.thread, %PyObject_TypeCheck.exit34
  %i.aj = getelementptr i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !45
  br label %.thread

bb.m:                                             ; preds = %PyObject_TypeCheck.exit34
  %i.ak = call fastcc i32 @real_to_complex(ptr noundef %i.b, ptr noundef %4)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %PyObject_TypeCheck.exit34.thread, %bb.m
  %i.am = load double, ptr %3, align 8, !tbaa !49
  %i.an = load double, ptr %4, align 8, !tbaa !49
  %i.ao = fcmp oeq double %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load double, ptr %i.ar, align 8
  %i.at = fcmp oeq double %i.aq, %i.as
  %i.au = select i1 %i.ao, i1 %i.at, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %.thread, %PyObject_TypeCheck.exit30.thread
  %.115.shrunk = phi i1 [ %i.au, %.thread ], [ %i.ag, %PyObject_TypeCheck.exit30.thread ]
  %i.aw = icmp ne i32 %2, 2
  %i.ax = xor i1 %i.aw, %.115.shrunk
  br i1 %i.ax, label %.split17, label %.split

.split17:                                         ; preds = %._crit_edge, %bb.o
  %i.ay = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !22 ; 2 uses
  %i.az = icmp ugt i32 %i.ay, -1073741825
  br i1 %i.az, label %Py_DECREF.exit, label %bb.p

bb.p:                                             ; preds = %.split17
  %i.ba = add nuw i32 %i.ay, 1
  store i32 %i.ba, ptr @_Py_TrueStruct, align 8, !tbaa !22
  br label %Py_DECREF.exit

.split:                                           ; preds = %._crit_edge, %bb.o
  %i.bb = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !22 ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, -1073741825
  br i1 %i.bc, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %.split
  %i.bd = add nuw i32 %i.bb, 1
  store i32 %i.bd, ptr @_Py_FalseStruct, align 8, !tbaa !22
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %.split, %bb.p, %.split17, %bb.n, %bb.j, %bb.i, %bb.h, %bb.a, %PyObject_TypeCheck.exit32, %bb.g, %bb.e
  %.2 = phi ptr [ %i.v, %bb.j ], [ %i.l, %bb.e ], [ null, %bb.g ], [ %i.av, %bb.n ], [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_TrueStruct, %bb.p ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit32 ], [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ @_Py_TrueStruct, %.split17 ], [ @_Py_FalseStruct, %.split ], [ @_Py_FalseStruct, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %.2
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #9

; Function Attrs: nounwind uwtable
define internal ptr @actual_complex_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val52 = load i64, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.c = icmp sgt i64 %.val52, 1
  br i1 %i.c, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.d = tail call fastcc ptr @complex_new(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %complex_subtype_from_doubles.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val53 = load i64, ptr %i.e, align 8, !tbaa !51
  %.not42 = icmp eq i64 %.val53, 0
  br i1 %.not42, label %bb.d, label %.split38

.split38:                                         ; preds = %bb.c
  %i.f = tail call fastcc ptr @complex_new(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %complex_subtype_from_doubles.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not43 = icmp eq i64 %.val52, 0
  br i1 %.not43, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = tail call ptr %i.h(ptr noundef %0, i64 noundef 0) #15, !inline_history !56 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %complex_subtype_from_doubles.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %complex_subtype_from_doubles.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 11 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %.val57 = load ptr, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  %i.n = icmp eq ptr %.val57, @PyComplex_Type
  %i.o = icmp eq ptr %0, @PyComplex_Type
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %complex_subtype_from_doubles.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %i.l, align 8, !tbaa !22
  br label %complex_subtype_from_doubles.exit

bb.j:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %.val57, i64 168
  %.val56 = load i64, ptr %i.s, align 8, !tbaa !31
  %i.t = and i64 %.val56, 268435456
  %.not44 = icmp eq i64 %i.t, 0
  br i1 %.not44, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.u = tail call ptr @_PyUnicode_TransformDecimalAndSpaceToASCII(ptr noundef nonnull %i.l) #15 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %complex_subtype_from_string.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a) #15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !57
  %i.y = call ptr @_Py_string_to_number_with_underscores(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str, ptr noundef nonnull %i.l, ptr noundef %0, ptr noundef nonnull @complex_from_string_inner) #15 ; 3 uses
  %i.z = load i32, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %.not.i.i60 = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i60, label %bb.m, label %complex_subtype_from_string.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !22
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %complex_subtype_from_string.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #15
  br label %complex_subtype_from_string.exit

complex_subtype_from_string.exit:                 ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi ptr [ %i.y, %bb.n ], [ null, %bb.k ], [ %i.y, %bb.l ], [ %i.y, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %complex_subtype_from_doubles.exit

bb.o:                                             ; preds = %bb.j
  %i.ac = tail call fastcc ptr @try_complex_special_method(ptr noundef nonnull %i.l) ; 5 uses
  %.not45 = icmp eq ptr %i.ac, null
  br i1 %.not45, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load <2 x double>, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr i8, ptr %0, i64 304
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ah = tail call ptr %i.ag(ptr noundef %0, i64 noundef 0) #15, !inline_history !56 ; 5 uses
  %.not.i.i61 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i61, label %complex_subtype_from_doubles.exit63, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  store <2 x double> %i.ae, ptr %i.ai, align 8, !tbaa !23
  br label %complex_subtype_from_doubles.exit63

complex_subtype_from_doubles.exit63:              ; preds = %bb.p, %bb.q
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i, label %bb.r, label %complex_subtype_from_doubles.exit

bb.r:                                             ; preds = %complex_subtype_from_doubles.exit63
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !22
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.s, label %complex_subtype_from_doubles.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #15
  br label %complex_subtype_from_doubles.exit

bb.t:                                             ; preds = %bb.o
  %i.am = tail call ptr @PyErr_Occurred() #15
  %.not46 = icmp eq ptr %i.am, null
  br i1 %.not46, label %bb.u, label %complex_subtype_from_doubles.exit

bb.u:                                             ; preds = %bb.t
  %.val58 = load ptr, ptr %i.m, align 8, !tbaa !19 ; 2 uses
end_hunk_0
