inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0_@PyModule_AddStringConstant
declare i32 @PyModule_AddStringConstant(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @Example_finalize(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !13
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Example_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #4 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @Example_getattro(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyDict_GetItemWithError(ptr noundef nonnull %i.b, ptr noundef %1) #4 ; 5 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !13
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit:                                  ; preds = %bb.b
  %i.g = tail call ptr @PyErr_Occurred() #4
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.e, label %_Py_NewRef.exit.thread

bb.e:                                             ; preds = %_Py_NewRef.exit, %bb.a
  %i.h = tail call ptr @PyObject_GenericGetAttr(ptr noundef nonnull %0, ptr noundef %1) #4
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit.thread:                           ; preds = %bb.d, %bb.c, %_Py_NewRef.exit, %bb.e
  %.1 = phi ptr [ %i.h, %bb.e ], [ null, %_Py_NewRef.exit ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @Example_setattr(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyDict_New() #4           ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @PyDict_DelItemString(ptr noundef nonnull %i.f, ptr noundef %1) #4 ; 4 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !10
  %i.k = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.j) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.33) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef nonnull %2) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.g
  %.0 = phi i32 [ %i.m, %bb.g ], [ -1, %bb.b ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  ret i32 %.0
}

declare ptr @PyDict_GetItemWithError(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

declare i32 @PyDict_DelItemString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @Example_demo(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.a) #4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10   ; 6 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val5 = load i64, ptr %i.e, align 8, !tbaa !23
  %i.f = and i64 %.val5, 268435456
  %.not4 = icmp eq i64 %i.f, 0
  br i1 %.not4, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.c, align 8, !tbaa !13
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.b ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @createfunc_nonmodule(ptr readnone captures(none) %0, ptr noundef readnone captures(address) %1) #0 {
bb.a:
  %i.a = icmp ne ptr %1, @def_nonmodule
  %i.b = icmp ne ptr %1, @def_nonmodule_with_methods
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.43) #4
  br label %Py_DECREF.exit18

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyDict_New() #4           ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef 3) #4 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.h, -1
  br i1 %.not.i17, label %bb.f, label %Py_DECREF.exit18

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !13
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %Py_DECREF.exit18

bb.g:                                             ; preds = %bb.d
  %i.k = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.f) #4 ; 0 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not.i15 = icmp sgt i32 %i.l, -1
  br i1 %.not.i15, label %bb.h, label %Py_DECREF.exit16

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !13
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit16

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.o = tail call ptr @_PyNamespace_New(ptr noundef nonnull %i.d) #4 ; 3 uses
  %i.p = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit18

bb.j:                                             ; preds = %Py_DECREF.exit16
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !13
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %Py_DECREF.exit18

bb.k:                                             ; preds = %bb.j, %bb.f
  %.0.ph = phi ptr [ null, %bb.f ], [ %i.o, %bb.j ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #4
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.k, %bb.j, %Py_DECREF.exit16, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.o, %bb.j ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ %i.o, %Py_DECREF.exit16 ], [ %.0.ph, %bb.k ]
  ret ptr %.0
}

declare ptr @_PyNamespace_New(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @nonmodule_bar(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14
  %i.e = load i64, ptr %i.b, align 8, !tbaa !14
  %i.f = sub i64 %i.d, %i.e
  %i.g = call ptr @PyLong_FromLong(i64 noundef %i.f) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @createfunc_noop(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_New(ptr noundef nonnull @.str.70) #4
  ret ptr %i.a
}

declare ptr @PyModule_New(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @createfunc_null(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @createfunc_raise(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.75) #4
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @createfunc_unreported_exception(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.75) #4
  %i.b = tail call ptr @PyModule_New(ptr noundef nonnull @.str.15) #4
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @execfunc_err(ptr readnone captures(none) %0) #2 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execfunc_raise(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.88) #4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execfunc_unreported_exception(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.88) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @meth_state_access_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #4
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @StateAccessType_spec, ptr noundef null) #4
  %i.d = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %i.c) #4
  %.not = icmp ne i32 %i.d, 0
  %. = sext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_testmultiphase_StateAccessType_get_defining_module(ptr readnone captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !31
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.109) #4
  br label %_testmultiphase_StateAccessType_get_defining_module_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @PyType_GetModule(ptr noundef %1) #4 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_testmultiphase_StateAccessType_get_defining_module_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %_testmultiphase_StateAccessType_get_defining_module_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %i.c, align 8, !tbaa !13
  br label %_testmultiphase_StateAccessType_get_defining_module_impl.exit

_testmultiphase_StateAccessType_get_defining_module_impl.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_testmultiphase_StateAccessType_getmodulebydef_bad_def(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !31
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.110) #4
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.d = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val8, ptr noundef nonnull @def_nonmodule) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @_testmultiphase_StateAccessType_get_count(ptr readnone captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !31
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.111) #4
  br label %bb.f

end_hunk_0
