inline.NumInlined: 172
inline.NumDeleted: 42
begin_hunk_0_@_functools_exec:bb.a
_PyObject_CallNoArgs.exit:                        ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.j, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.l, %bb.b ] ; 2 uses
  store ptr %.0.i.i, ptr %.val, align 8, !tbaa !19
  %i.m = icmp eq ptr %.0.i.i, null
  br i1 %i.m, label %Py_DECREF.exit40, label %bb.c

bb.c:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.n = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @placeholder_type_spec, ptr noundef null) #8 ; 3 uses
  %i.o = getelementptr i8, ptr %.val, i64 8       ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !21
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %Py_DECREF.exit40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @PyModule_AddType(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #8
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %Py_DECREF.exit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.t = tail call ptr @PyObject_CallNoArgs(ptr noundef %i.s) #8 ; 7 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Py_DECREF.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.t) #8
  %i.w = icmp slt i32 %i.v, 0
  %i.x = load i32, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %.not.i39 = icmp sgt i32 %i.x, -1               ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i39, label %bb.h, label %Py_DECREF.exit40

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.t, align 8, !tbaa !27
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %Py_DECREF.exit40

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #8
  br label %Py_DECREF.exit40

bb.j:                                             ; preds = %bb.f
  br i1 %.not.i39, label %bb.k, label %Py_DECREF.exit38

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %i.x, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.t, align 8, !tbaa !27
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %Py_DECREF.exit38

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #8
  br label %Py_DECREF.exit38

Py_DECREF.exit38:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.ac = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @partial_type_spec, ptr noundef null) #8 ; 3 uses
  %i.ad = getelementptr i8, ptr %.val, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %Py_DECREF.exit40, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit38
  %i.af = tail call i32 @PyModule_AddType(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #8
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %Py_DECREF.exit40, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @lru_cache_type_spec, ptr noundef null) #8 ; 7 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %Py_DECREF.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @PyModule_AddType(ptr noundef nonnull %0, ptr noundef nonnull %i.ah) #8
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = load i32, ptr %i.ah, align 8, !tbaa !27 ; 3 uses
  %.not.i35 = icmp sgt i32 %i.al, -1              ; 2 uses
  br i1 %i.ak, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i35, label %bb.q, label %Py_DECREF.exit40

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ah, align 8, !tbaa !27
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %Py_DECREF.exit40

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #8
  br label %Py_DECREF.exit40

bb.s:                                             ; preds = %bb.o
  br i1 %.not.i35, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  %i.ao = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ah, align 8, !tbaa !27
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.t, %bb.u
  %i.aq = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @keyobject_type_spec, ptr noundef null) #8 ; 2 uses
  %i.ar = getelementptr i8, ptr %.val, i64 32
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !24
  %i.as = icmp eq ptr %i.aq, null
  br i1 %i.as, label %Py_DECREF.exit40, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit
  %i.at = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @lru_list_elem_type_spec, ptr noundef null) #8 ; 2 uses
  %i.au = getelementptr i8, ptr %.val, i64 40
  store ptr %i.at, ptr %i.au, align 8, !tbaa !25
  %i.av = icmp eq ptr %i.at, null
  %. = sext i1 %i.av to i32
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %bb.r, %bb.q, %bb.p, %bb.i, %bb.h, %bb.g, %bb.e, %Py_DECREF.exit38, %bb.m, %bb.v, %Py_DECREF.exit, %bb.n, %bb.d, %bb.c, %_PyObject_CallNoArgs.exit
  %.2 = phi i32 [ -1, %bb.d ], [ -1, %_PyObject_CallNoArgs.exit ], [ -1, %bb.c ], [ -1, %bb.m ], [ %., %bb.v ], [ -1, %bb.e ], [ -1, %Py_DECREF.exit38 ], [ -1, %Py_DECREF.exit ], [ -1, %bb.i ], [ -1, %bb.n ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ]
  ret i32 %.2
}

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallNoArgs(ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_MakeTpCall(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_CheckFunctionResult(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal void @placeholder_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %i.b = getelementptr i8, ptr %.val, i64 320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  tail call void %i.c(ptr noundef %0) #8
  %i.d = load i32, ptr %.val, align 8, !tbaa !27  ; 2 uses
  %.not.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %.val, align 8, !tbaa !27
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @placeholder_repr(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.10) #8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @placeholder_new(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %get_functools_state_by_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val19 = load i64, ptr %i.b, align 8, !tbaa !61
  %.not17 = icmp eq i64 %.val19, 0
  br i1 %.not17, label %get_functools_state_by_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.16) #8
  br label %_Py_NewRef.exit

get_functools_state_by_type.exit:                 ; preds = %bb.c, %bb.b
  %i.d = tail call nonnull ptr @PyType_GetModuleByDef(ptr noundef %0, ptr noundef nonnull @_functools_module) #8, !inline_history !65
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %.val.i, i64 16    ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 5 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %get_functools_state_by_type.exit
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %i.g, align 8, !tbaa !27
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %get_functools_state_by_type.exit
  %i.k = tail call ptr @PyType_GenericNew(ptr noundef %0, ptr noundef null, ptr noundef null) #8 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.k, align 8, !tbaa !27
  br label %_Py_NewRef.exit20

_Py_NewRef.exit20:                                ; preds = %bb.i, %bb.j
  store ptr %i.k, ptr %i.f, align 8, !tbaa !22
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.e, %bb.h, %_Py_NewRef.exit20, %bb.g, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ %i.k, %bb.h ], [ null, %bb.g ], [ %i.k, %_Py_NewRef.exit20 ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  ret ptr %.2
}

declare i32 @_PyObject_VisitType(ptr noundef, ptr noundef, ptr noundef) #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @placeholder_reduce(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.10) #8
  ret ptr %i.a
}

declare ptr @PyType_GenericNew(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @partial_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @partial_clear(ptr noundef nonnull %0) ; 0 uses
  %i.e = getelementptr i8, ptr %.val, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  tail call void %i.f(ptr noundef nonnull %0) #8
  %i.g = load i32, ptr %.val, align 8, !tbaa !27  ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %.val, align 8, !tbaa !27
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @partial_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = tail call i32 @Py_ReprEnter(ptr noundef %0) #8 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.20) #8
  br label %bb.ai

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 8, !tbaa !27
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 7 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %_Py_NewRef.exit73, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !27
  br label %_Py_NewRef.exit73

_Py_NewRef.exit73:                                ; preds = %_Py_NewRef.exit, %bb.f
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %_Py_NewRef.exit74, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit73
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %i.r, align 8, !tbaa !27
  br label %_Py_NewRef.exit74

_Py_NewRef.exit74:                                ; preds = %_Py_NewRef.exit73, %bb.g
  %i.v = tail call ptr @Py_GetConstant(i32 noundef 7) #8 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %Py_XDECREF.exit81, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit74
  %i.x = getelementptr i8, ptr %i.m, i64 16
  %.val72 = load i64, ptr %i.x, align 8, !tbaa !29 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !71
  %i.y = icmp sgt i64 %.val72, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.m, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.042118 = phi ptr [ %i.v, %.lr.ph ], [ %i.ac, %bb.l ] ; 4 uses
  %storemerge117 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.l ]
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %storemerge117
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.21, ptr noundef nonnull %.042118, ptr noundef %i.ab) #8 ; 3 uses
  %i.ad = load i32, ptr %.042118, align 8, !tbaa !27 ; 2 uses
  %.not.i64 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i64, label %bb.j, label %Py_DECREF.exit65

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %.042118, align 8, !tbaa !27
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %Py_DECREF.exit65

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.042118) #8
  br label %Py_DECREF.exit65

Py_DECREF.exit65:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.ag = icmp eq ptr %i.ac, null
  br i1 %i.ag, label %Py_XDECREF.exit81, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit65
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !71
end_hunk_0
begin_hunk_1_@keyobject_traverse:bb.a
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @keyobject_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.c, -1
  br i1 %.not.i13, label %bb.c, label %Py_DECREF.exit14

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !27
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #8
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  store ptr null, ptr %i.f, align 8, !tbaa !26
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !27
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @keyobject_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not = icmp eq ptr %.val21, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.70) #8 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = icmp ne ptr %i.g, null
  %i.k = icmp ne ptr %i.i, null
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !26
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.71) #8 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %i.g, ptr %i.a, align 16, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.p, align 8, !tbaa !26
  %i.q = call ptr @PyObject_Vectorcall(ptr noundef %i.o, ptr noundef nonnull %i.a, i64 noundef 2, ptr noundef null) #8 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @PyObject_RichCompare(ptr noundef nonnull %i.q, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), i32 noundef %2) #8 ; 3 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %Py_DECREF.exit, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %.0, %Py_DECREF.exit ], [ null, %bb.d ]
  ret ptr %.2
}

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @keyobject_text_signature(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.75) #8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @lru_list_elem_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 4 uses
  %.not.i7 = icmp eq ptr %i.c, null
  br i1 %.not.i7, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !27
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 4 uses
  %.not.i8 = icmp eq ptr %i.h, null
  br i1 %.not.i8, label %Py_XDECREF.exit10, label %bb.e

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not.i.i9 = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i9, label %bb.f, label %Py_XDECREF.exit10

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !27
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_XDECREF.exit10

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #8
  br label %Py_XDECREF.exit10

Py_XDECREF.exit10:                                ; preds = %Py_XDECREF.exit, %bb.e, %bb.f, %bb.g
  %i.l = getelementptr i8, ptr %.val, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  tail call void %i.m(ptr noundef nonnull %0) #8
  %i.n = load i32, ptr %.val, align 8, !tbaa !27  ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %Py_XDECREF.exit10
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %.val, align 8, !tbaa !27
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit10, %bb.h, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !15, i64 24}
!12 = !{!"", !13, i64 0, !16, i64 16, !15, i64 24, !16, i64 32, !16, i64 40, !17, i64 48, !18, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!13 = !{!"_object", !9, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS7_object", !15, i64 0}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!20, !16, i64 0}
!20 = !{!"_functools_state", !16, i64 0, !14, i64 8, !16, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!21 = !{!20, !14, i64 8}
!22 = !{!20, !16, i64 16}
!23 = !{!20, !14, i64 24}
!24 = !{!20, !14, i64 32}
!25 = !{!20, !14, i64 40}
!26 = !{!16, !16, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!14, !14, i64 0}
!29 = !{!30, !18, i64 16}
!30 = !{!"PyVarObject", !13, i64 0, !18, i64 16}
!31 = !{!32, !18, i64 24}
!32 = !{!"", !30, i64 0, !18, i64 24, !9, i64 32}
!33 = !{!34, !18, i64 0}
!34 = !{!"", !18, i64 0, !18, i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS3_is", !15, i64 0}
!37 = !{!34, !18, i64 8}
!38 = !{!39, !8, i64 272}
!39 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !40, i64 8, !9, i64 32, !40, i64 80, !9, i64 104, !8, i64 224, !41, i64 232, !16, i64 240, !16, i64 248, !18, i64 256, !18, i64 264, !8, i64 272, !8, i64 276}
!40 = !{!"gc_generation", !34, i64 0, !8, i64 16, !8, i64 20}
!41 = !{!"p1 _ZTS19_PyInterpreterFrame", !15, i64 0}
!42 = !{!39, !8, i64 28}
!43 = !{!39, !18, i64 256}
!44 = !{!39, !8, i64 24}
!45 = !{!46, !16, i64 16}
!46 = !{!"", !13, i64 0, !16, i64 16, !16, i64 24}
!47 = !{!46, !16, i64 24}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS3_ts", !15, i64 0}
!50 = !{!13, !14, i64 8}
!51 = !{!52, !18, i64 168}
!52 = !{!"_typeobject", !30, i64 0, !53, i64 24, !18, i64 32, !18, i64 40, !15, i64 48, !18, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !18, i64 168, !53, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !18, i64 208, !15, i64 216, !15, i64 224, !54, i64 232, !55, i64 240, !56, i64 248, !14, i64 256, !16, i64 264, !15, i64 272, !15, i64 280, !18, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !15, i64 360, !16, i64 368, !15, i64 376, !8, i64 384, !15, i64 392, !15, i64 400, !9, i64 408, !57, i64 410}
!53 = !{!"p1 omnipotent char", !15, i64 0}
!54 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!55 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!56 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!57 = !{!"short", !9, i64 0}
!58 = !{!52, !18, i64 56}
!59 = distinct !{null, null}
!60 = !{!52, !15, i64 320}
!61 = !{!62, !18, i64 16}
!62 = !{!"", !13, i64 0, !18, i64 16, !18, i64 24, !63, i64 32, !64, i64 40}
!63 = !{!"p1 _ZTS15_dictkeysobject", !15, i64 0}
!64 = !{!"p1 _ZTS11_dictvalues", !15, i64 0}
!65 = distinct !{null}
!66 = !{!67, !16, i64 48}
!67 = !{!"", !13, i64 0, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !18, i64 64, !15, i64 72}
!68 = !{!67, !16, i64 16}
!69 = !{!67, !16, i64 24}
!70 = !{!67, !16, i64 32}
!71 = !{!18, !18, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = distinct !{!74, !73}
!75 = !{!67, !18, i64 64}
!76 = !{!67, !16, i64 56}
!77 = distinct !{!77, !73}
!78 = distinct !{!78, !73}
!79 = !{!67, !16, i64 40}
!80 = distinct !{!80, !73}
!81 = !{!52, !15, i64 304}
!82 = distinct !{!82, !73, !83, !84}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = distinct !{!85, !73, !84, !83}
!86 = distinct !{!86, !73}
!87 = !{!67, !15, i64 72}
!88 = distinct !{!88, !73, !83, !84}
!89 = distinct !{!89, !73, !84, !83}
!90 = distinct !{null}
!91 = distinct !{!91, !73}
!92 = distinct !{!92, !73}
!93 = distinct !{!93, !73}
!94 = distinct !{!94, !73}
!95 = !{!96, !16, i64 144}
!96 = !{!"lru_cache_object", !97, i64 0, !15, i64 56, !8, i64 64, !16, i64 72, !18, i64 80, !16, i64 88, !18, i64 96, !18, i64 104, !16, i64 112, !14, i64 120, !16, i64 128, !16, i64 136, !16, i64 144}
!97 = !{!"lru_list_elem", !13, i64 0, !98, i64 16, !98, i64 24, !18, i64 32, !16, i64 40, !16, i64 48}
!98 = !{!"p1 _ZTS13lru_list_elem", !15, i64 0}
!99 = !{!96, !15, i64 56}
!100 = !{!96, !98, i64 24}
!101 = !{!97, !98, i64 24}
!102 = !{!97, !16, i64 40}
!103 = !{!97, !16, i64 48}
!104 = distinct !{!104, !73}
!105 = !{!96, !16, i64 72}
!106 = !{!96, !16, i64 88}
!107 = !{!96, !16, i64 112}
!108 = !{!96, !14, i64 120}
!109 = !{!96, !16, i64 128}
!110 = !{!96, !16, i64 136}
!111 = !{!97, !98, i64 16}
!112 = distinct !{!112, !73}
!113 = !{!96, !98, i64 16}
!114 = !{!96, !8, i64 64}
!115 = !{!96, !18, i64 80}
!116 = !{!96, !18, i64 104}
!117 = !{!96, !18, i64 96}
!118 = !{!98, !98, i64 0}
!119 = !{!97, !18, i64 32}
!120 = distinct !{!120, !73}
!121 = distinct !{!121, !73}
!122 = distinct !{!122, !73}
!123 = distinct !{!123, !73}
end_hunk_1
