inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@complex_richcompare
define internal ptr @complex_richcompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.Py_complex, align 8         ; 12 uses
  %4 = alloca %struct.Py_complex, align 8         ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@complex_richcompare:bb.a
bb.d:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %i.j = call i32 @_Py_convert_int_to_double(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #15
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.real_to_complex.exit_crit_edge

.real_to_complex.exit_crit_edge:                  ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %real_to_complex.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %Py_DECREF.exit

real_to_complex.exit:                             ; preds = %.real_to_complex.exit_crit_edge, %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.thread
  %5 = phi ptr [ %.pre, %.real_to_complex.exit_crit_edge ], [ %1, %PyObject_TypeCheck.exit.thread.i.i ], [ %1, %PyObject_TypeCheck.exit.thread ] ; 2 uses
  %i.m = getelementptr i8, ptr %5, i64 8
  %.val = load ptr, ptr %i.m, align 8, !tbaa !19  ; 3 uses
  %i.n = getelementptr i8, ptr %.val, i64 168
  %.val23 = load i64, ptr %i.n, align 8, !tbaa !31
end_hunk_1
begin_hunk_2_@complex_richcompare:bb.a
  br i1 %i.u, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %6 = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.v = call ptr @PyObject_RichCompare(ptr noundef nonnull %i.t, ptr noundef %6, i32 noundef %2) #15 ; 3 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit
end_hunk_2
begin_hunk_3_@complex_richcompare:bb.a
PyObject_TypeCheck.exit30:                        ; preds = %bb.k
  %i.z = call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyFloat_Type) #15
  %.not = icmp eq i32 %i.z, 0
  %.pre50 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 3 uses
  br i1 %.not, label %bb.l, label %PyObject_TypeCheck.exit30.thread

PyObject_TypeCheck.exit30.thread:                 ; preds = %bb.k, %PyObject_TypeCheck.exit30
  %7 = phi ptr [ %5, %bb.k ], [ %.pre50, %PyObject_TypeCheck.exit30 ]
  %i.aa = load double, ptr %3, align 8, !tbaa !49
  %i.ab = call double @PyFloat_AsDouble(ptr noundef %7) #15
  %i.ac = fcmp oeq double %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8
end_hunk_3
begin_hunk_4_@complex_richcompare:bb.a
  br label %bb.o

bb.l:                                             ; preds = %PyObject_TypeCheck.exit30
  %8 = getelementptr i8, ptr %.pre50, i64 8
  %.val25 = load ptr, ptr %8, align 8, !tbaa !19  ; 2 uses
  %.not.i31 = icmp eq ptr %.val25, @PyComplex_Type
  br i1 %.not.i31, label %PyObject_TypeCheck.exit32.thread.thread, label %PyObject_TypeCheck.exit32

end_hunk_4
begin_hunk_5_@complex_richcompare:bb.a
  br i1 %.not45, label %Py_DECREF.exit, label %PyObject_TypeCheck.exit32.thread

PyObject_TypeCheck.exit32.thread:                 ; preds = %PyObject_TypeCheck.exit32
  %.pre47 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre47, i64 8
  %.val24.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %.not.i33 = icmp eq ptr %.val24.pre, @PyComplex_Type
  br i1 %.not.i33, label %PyObject_TypeCheck.exit34.thread, label %PyObject_TypeCheck.exit34
end_hunk_5
begin_hunk_6_@complex_richcompare:bb.a
PyObject_TypeCheck.exit34:                        ; preds = %PyObject_TypeCheck.exit32.thread
  %i.ai = call i32 @PyType_IsSubtype(ptr noundef %.val24.pre, ptr noundef nonnull @PyComplex_Type) #15
  %.not46 = icmp eq i32 %i.ai, 0
  br i1 %.not46, label %bb.m, label %PyObject_TypeCheck.exit34.PyObject_TypeCheck.exit34.thread_crit_edge

PyObject_TypeCheck.exit34.PyObject_TypeCheck.exit34.thread_crit_edge: ; preds = %PyObject_TypeCheck.exit34
  %.pre49 = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %PyObject_TypeCheck.exit34.thread

PyObject_TypeCheck.exit34.thread:                 ; preds = %PyObject_TypeCheck.exit32.thread.thread, %PyObject_TypeCheck.exit34.PyObject_TypeCheck.exit34.thread_crit_edge, %PyObject_TypeCheck.exit32.thread
  %9 = phi ptr [ %.pre49, %PyObject_TypeCheck.exit34.PyObject_TypeCheck.exit34.thread_crit_edge ], [ %.pre47, %PyObject_TypeCheck.exit32.thread ], [ %.pre50, %PyObject_TypeCheck.exit32.thread.thread ]
  %i.aj = getelementptr i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !45
  br label %.thread

end_hunk_6
