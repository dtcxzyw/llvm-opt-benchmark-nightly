inline.NumInlined: 1348
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@slot_tp_descr_get:bb.a
Py_DECREF.exit:                                   ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %bb.g, %Py_DECREF.exit
  %.0 = phi ptr [ %i.x, %Py_DECREF.exit ], [ %0, %bb.g ], [ %0, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_descr_get(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !115
  %i.c = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.240, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_NoneStruct
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ null, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %i.f, null
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.377) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.m = call ptr %2(ptr noundef %0, ptr noundef %i.f, ptr noundef %i.i) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %i.m, %bb.h ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @slot_tp_descr_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64168), ptr noundef %i.a, i64 noundef 2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 16, !tbaa !115
  %i.f = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70000), ptr noundef %i.a, i64 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]  ; 4 uses
  %i.g = icmp eq ptr %.0, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %.0, align 8, !tbaa !112   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %.0, align 8, !tbaa !112
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.06 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_descr_set(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.242, i64 noundef 2, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.f = call i32 %2(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #21
  %i.g = icmp slt i32 %i.f, 0
  %._Py_NoneStruct = select i1 %i.g, ptr null, ptr @_Py_NoneStruct
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %._Py_NoneStruct, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_descr_delete(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = tail call i32 %2(ptr noundef %0, ptr noundef %i.h, ptr noundef null) #21
  %i.j = icmp slt i32 %i.i, 0
  %._Py_NoneStruct = select i1 %i.j, ptr null, ptr @_Py_NoneStruct
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %check_num_args.exit
  %.0 = phi ptr [ %._Py_NoneStruct, %check_num_args.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @slot_tp_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._PyCStackRef, align 8       ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = call fastcc range(i32 -1, 2) i32 @lookup_method_ex(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66208), ptr noundef nonnull %3, i32 noundef 1), !inline_history !416 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  %.val.pre.i = load i64, ptr %3, align 8         ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.val.pre.i, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %.not.i12 = icmp eq i32 %i.c, 0
  br i1 %.not.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @_PyObject_Call_Prepend(ptr noundef %i.b, ptr noundef %i.f, ptr noundef %0, ptr noundef %1, ptr noundef %2) #21, !inline_history !417
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @_PyObject_Call(ptr noundef %i.b, ptr noundef %i.f, ptr noundef %1, ptr noundef %2) #21, !inline_history !417
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 8 uses
  %i.i = and i64 %.val.pre.i, 1
  %.not.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %call_method.exit

bb.f:                                             ; preds = %bb.e
  %i.j = inttoptr i64 %.val.pre.i to ptr          ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !112
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !112
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %call_method.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #21, !inline_history !417
  br label %call_method.exit

call_method.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.n = icmp eq ptr %.1.i, null
  br i1 %i.n, label %Py_DECREF.exit10, label %bb.h

bb.h:                                             ; preds = %call_method.exit
  %.not = icmp eq ptr %.1.i, @_Py_NoneStruct
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.p = getelementptr i8, ptr %.1.i, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.q = getelementptr i8, ptr %.val, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.378, ptr noundef %i.r) #21 ; 0 uses
  %i.t = load i32, ptr %.1.i, align 8, !tbaa !112 ; 2 uses
  %.not.i9 = icmp sgt i32 %i.t, -1
  br i1 %.not.i9, label %bb.j, label %Py_DECREF.exit10

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %.1.i, align 8, !tbaa !112
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %Py_DECREF.exit10.sink.split, label %Py_DECREF.exit10

bb.k:                                             ; preds = %bb.h
  %i.w = load i32, ptr %.1.i, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit10

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %.1.i, align 8, !tbaa !112
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit10.sink.split, label %Py_DECREF.exit10

Py_DECREF.exit10.sink.split:                      ; preds = %bb.l, %bb.j
  %.0.ph = phi i32 [ -1, %bb.j ], [ 0, %bb.l ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #21
  br label %Py_DECREF.exit10

Py_DECREF.exit10:                                 ; preds = %Py_DECREF.exit10.sink.split, %bb.l, %bb.k, %bb.j, %bb.i, %call_method.exit
  %.0 = phi i32 [ 0, %bb.l ], [ -1, %call_method.exit ], [ -1, %bb.i ], [ -1, %bb.j ], [ 0, %bb.k ], [ %.0.ph, %Py_DECREF.exit10.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_init(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = tail call i32 %2(ptr noundef %0, ptr noundef %1, ptr noundef %3) #21
  %i.b = icmp slt i32 %i.a, 0
  %._Py_NoneStruct = select i1 %i.b, ptr null, ptr @_Py_NoneStruct
  ret ptr %._Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal void @slot_tp_finalize(ptr noundef %0) #1 {
bb.a:
  %1 = alloca %struct._PyCStackRef, align 8       ; 4 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = tail call ptr @_PyErr_GetRaisedException(ptr noundef %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.d = call fastcc range(i32 -1, 2) i32 @lookup_method_ex(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64064), ptr noundef nonnull %1, i32 noundef 0), !inline_history !176 ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %.val.pre = load i64, ptr %1, align 8           ; 3 uses
  br i1 %i.e, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.val.pre, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 7 uses
  %.not.i13 = icmp eq i32 %i.d, 0
  br i1 %.not.i13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyObject_CallOneArg(ptr noundef %i.g, ptr noundef %0) #21
  br label %call_unbound_noarg.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !126 ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i.i.i.i, i64 168
  %.val6.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !118
  %i.l = and i64 %.val6.i.i.i.i, 2048
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i:          ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.val.i.i.i.i, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !178
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %.0.copyload.i.i.i.i = load ptr, ptr %i.o, align 1 ; 2 uses
  %i.p = icmp eq ptr %.0.copyload.i.i.i.i, null
  br i1 %i.p, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %bb.e

_PyVectorcall_FunctionInline.exit.thread.i.i.i:   ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i, %bb.d
  %i.q = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.i, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0, ptr noundef null) #21
  br label %call_unbound_noarg.exit

bb.e:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i
  %i.r = tail call ptr %.0.copyload.i.i.i.i(ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0, ptr noundef null) #21, !inline_history !179
  %i.s = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.i, ptr noundef nonnull %i.g, ptr noundef %i.r, ptr noundef null) #21
  br label %call_unbound_noarg.exit

call_unbound_noarg.exit:                          ; preds = %bb.c, %_PyVectorcall_FunctionInline.exit.thread.i.i.i, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %i.q, %_PyVectorcall_FunctionInline.exit.thread.i.i.i ], [ %i.s, %bb.e ] ; 4 uses
  %i.t = icmp eq ptr %.0.i, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %call_unbound_noarg.exit
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.379, ptr noundef %i.g) #21
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %call_unbound_noarg.exit
  %i.u = load i32, ptr %.0.i, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %.0.i, align 8, !tbaa !112
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %i.x = and i64 %.val.pre, 1
  %.not.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.not.i.i, label %bb.j, label %_PyThreadState_PopCStackRef.exit

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.y = inttoptr i64 %.val.pre to ptr            ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !112
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !112
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %_PyThreadState_PopCStackRef.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #21
  br label %_PyThreadState_PopCStackRef.exit

_PyThreadState_PopCStackRef.exit:                 ; preds = %Py_DECREF.exit, %bb.j, %bb.k
  tail call void @_PyErr_SetRaisedException(ptr noundef %i.b, ptr noundef %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @wrap_del(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 0
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 0, ptr noundef nonnull @.str.190, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  tail call void %2(ptr noundef %0) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %check_num_args.exit
  %.0 = phi ptr [ @_Py_NoneStruct, %check_num_args.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @slot_bf_getbuffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = sext i32 %2 to i64
  %i.c = tail call ptr @PyLong_FromLong(i64 noundef %i.b) #21 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !115
  %i.f = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63120), ptr noundef %i.a, i64 noundef 2) ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !126
  %.not = icmp eq ptr %.val, @PyMemoryView_Type
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.j = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.380, ptr noundef %0, ptr noundef nonnull %i.f) #21 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.f, ptr noundef %1, i32 noundef %2) #21
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyBufferWrapper_Type) #21 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.m, i64 16
  store ptr %i.f, ptr %i.o, align 8, !tbaa !379
  %i.p = load i32, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %0, align 8, !tbaa !112
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.h
  %i.s = getelementptr i8, ptr %i.m, i64 24
  store ptr %0, ptr %i.s, align 8, !tbaa !381
end_hunk_0
begin_hunk_1_@wrap_releasebuffer:bb.a
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !115
  %i.o = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.o, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !112
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.f, %bb.h, %bb.d, %bb.i, %bb.a, %bb.c
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.i ], [ @_Py_NoneStruct, %bb.j ], [ @_Py_NoneStruct, %bb.k ], [ @_Py_NoneStruct, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_am_await(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62952), ptr noundef null), !inline_history !487 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %slot_am_generic.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #21, !inline_history !488
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %slot_am_generic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !115
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.385, ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62952)) #21, !inline_history !488 ; 0 uses
  br label %slot_am_generic.exit

slot_am_generic.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_am_aiter(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62448), ptr noundef null), !inline_history !487 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %slot_am_generic.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #21, !inline_history !488
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %slot_am_generic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !115
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.385, ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62448)) #21, !inline_history !488 ; 0 uses
  br label %slot_am_generic.exit

slot_am_generic.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_am_anext(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62600), ptr noundef null), !inline_history !487 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %slot_am_generic.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #21, !inline_history !488
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %slot_am_generic.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !115
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.385, ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62600)) #21, !inline_history !488 ; 0 uses
  br label %slot_am_generic.exit

slot_am_generic.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_add(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !313
  %i.i = icmp eq ptr %i.h, @slot_nb_add
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = zext i1 %i.j to i32                      ; 5 uses
  %i.l = getelementptr i8, ptr %.val63, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.m, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !313
  %i.o = icmp eq ptr %i.n, @slot_nb_add
  br i1 %i.o, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.val61, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i.i = load i64, ptr %i.r, align 8, !tbaa !140 ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = icmp sgt i64 %.val.i.i, 0
  br i1 %i.t, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.u = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.u, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.s, i64 %.013.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115
  %i.x = icmp eq ptr %i.w, %.val63
  br i1 %i.x, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.y = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.y, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.z = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ab = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68824)) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ab, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !115
  %i.ae = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68824), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ae, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.af, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !112
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.k, %bb.k ], [ %i.k, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.k, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ai, align 8, !tbaa !115
  %i.aj = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62288), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.aj, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !112
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.an, align 8, !tbaa !115
  %i.ao = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68824), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.ao, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ae, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.aj, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_binaryfunc_l(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = tail call ptr %2(ptr noundef %0, ptr noundef %i.h) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %check_num_args.exit
  %.0 = phi ptr [ %i.i, %check_num_args.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_binaryfunc_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 1
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 1, ptr noundef nonnull @.str.123, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = tail call ptr %2(ptr noundef %i.h, ptr noundef %0) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %check_num_args.exit
  %.0 = phi ptr [ %i.i, %check_num_args.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_subtract(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !314
  %i.j = icmp eq ptr %i.i, @slot_nb_subtract
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !314
  %i.q = icmp eq ptr %i.p, @slot_nb_subtract
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69832)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69832), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70608), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69832), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_multiply(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !315
  %i.j = icmp eq ptr %i.i, @slot_nb_multiply
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !315
  %i.q = icmp eq ptr %i.p, @slot_nb_multiply
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69504)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69504), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67816), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69504), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_remainder(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !316
  %i.j = icmp eq ptr %i.i, @slot_nb_remainder
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !316
  %i.q = icmp eq ptr %i.p, @slot_nb_remainder
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69448)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69448), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67656), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69448), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_divmod(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !317
  %i.j = icmp eq ptr %i.i, @slot_nb_divmod
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !317
  %i.q = icmp eq ptr %i.p, @slot_nb_divmod
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68936)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68936), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64440), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68936), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_power(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  %i.b = alloca [3 x ptr], align 16               ; 14 uses
  %i.c = icmp eq ptr %2, @_Py_NoneStruct
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 8          ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !177  ; 3 uses
  %.val61.i = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.val63.i = load ptr, ptr %i.f, align 8, !tbaa !126 ; 5 uses
  %.not.i73 = icmp eq ptr %.val63.i, %.val61.i
  br i1 %.not.i73, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val61.i, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203  ; 2 uses
  %.not44.i = icmp eq ptr %i.i, null
  br i1 %.not44.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !318
  %i.l = icmp eq ptr %i.k, @slot_nb_power
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = zext i1 %i.m to i32                      ; 5 uses
  %i.o = getelementptr i8, ptr %.val63.i, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !203  ; 2 uses
  %.not45.i = icmp eq ptr %i.p, null
  br i1 %.not45.i, label %Py_DECREF.exit53.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !318
  %i.s = icmp eq ptr %i.r, @slot_nb_power
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit53.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %PyType_IsSubtype.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.val61.i, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.i.i.i = load i64, ptr %i.v, align 8, !tbaa !140 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 32
  %i.x = icmp sgt i64 %.val.i.i.i, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %PyType_IsSubtype.exit.thread.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add nuw nsw i64 %.013.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %.val.i.i.i
  br i1 %exitcond.not.i.i.i, label %PyType_IsSubtype.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !166

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.j
  %.013.i.i.i = phi i64 [ %i.y, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %.013.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115
  %i.ab = icmp eq ptr %i.aa, %.val63.i
  br i1 %i.ab, label %PyType_IsSubtype.exit.thread68.i, label %bb.j

.preheader.i.i.i:                                 ; preds = %bb.h, %bb.k
  %.05.i.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %.val61.i, %bb.h ] ; 2 uses
  %i.ac = icmp eq ptr %.05.i.i.i.i, %.val63.i
  br i1 %i.ac, label %PyType_IsSubtype.exit.thread68.i, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i.i
  %i.ad = getelementptr i8, ptr %.05.i.i.i.i, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %PyType_IsSubtype.exit.i, label %.preheader.i.i.i, !llvm.loop !168

PyType_IsSubtype.exit.i:                          ; preds = %bb.k
  %.not79.i = icmp eq ptr %.val63.i, @PyBaseObject_Type
  br i1 %.not79.i, label %PyType_IsSubtype.exit.thread68.i, label %PyType_IsSubtype.exit.thread.i

PyType_IsSubtype.exit.thread68.i:                 ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %PyType_IsSubtype.exit.i
  %i.af = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664)), !inline_history !489 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %slot_nb_power_binary.exit, label %bb.l

bb.l:                                             ; preds = %PyType_IsSubtype.exit.thread68.i
  %.not47.i = icmp eq i32 %i.af, 0
  br i1 %.not47.i, label %PyType_IsSubtype.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ah, align 8, !tbaa !115
  %i.ai = call fastcc ptr @vectorcall_maybe(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.a, i64 noundef 2), !inline_history !489 ; 5 uses
  %.not48.i = icmp eq ptr %i.ai, @_Py_NotImplementedStruct
  br i1 %.not48.i, label %bb.n, label %slot_nb_power_binary.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %.not.i52.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i52.i, label %bb.o, label %PyType_IsSubtype.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !112
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %PyType_IsSubtype.exit.thread.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #21, !inline_history !489
  br label %PyType_IsSubtype.exit.thread.i

PyType_IsSubtype.exit.thread.i:                   ; preds = %bb.j, %bb.p, %bb.o, %bb.n, %bb.l, %PyType_IsSubtype.exit.i, %bb.i, %bb.g
  %.2.i = phi i32 [ %i.n, %bb.l ], [ %i.n, %PyType_IsSubtype.exit.i ], [ 0, %bb.g ], [ 1, %bb.i ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.n, %bb.j ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.am, align 8, !tbaa !115
  %i.an = call fastcc ptr @vectorcall_maybe(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68664), ptr noundef %i.a, i64 noundef 2), !inline_history !489 ; 5 uses
  %.not49.i = icmp eq ptr %i.an, @_Py_NotImplementedStruct
  br i1 %.not49.i, label %bb.q, label %slot_nb_power_binary.exit

bb.q:                                             ; preds = %PyType_IsSubtype.exit.thread.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !126
  %.val62.i = load ptr, ptr %i.e, align 8, !tbaa !126
  %.not80.i = icmp eq ptr %.val62.i, %.val.i
  br i1 %.not80.i, label %slot_nb_power_binary.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !112 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.i, label %bb.s, label %Py_DECREF.exit53.i

bb.s:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !112
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %Py_DECREF.exit53.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #21, !inline_history !489
  br label %Py_DECREF.exit53.i

Py_DECREF.exit53.i:                               ; preds = %bb.t, %bb.s, %bb.r, %bb.f, %bb.e
  %.4.i = phi i32 [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %.2.i, %bb.t ], [ %.2.i, %bb.r ], [ %.2.i, %bb.s ]
  %.not51.i = icmp eq i32 %.4.i, 0
  br i1 %.not51.i, label %slot_nb_power_binary.exit, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit53.i
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ar, align 8, !tbaa !115
  %i.as = call fastcc ptr @vectorcall_maybe(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.a, i64 noundef 2), !inline_history !489
  br label %slot_nb_power_binary.exit

slot_nb_power_binary.exit:                        ; preds = %PyType_IsSubtype.exit.thread68.i, %bb.m, %PyType_IsSubtype.exit.thread.i, %bb.q, %Py_DECREF.exit53.i, %bb.u
  %.339.i = phi ptr [ %i.as, %bb.u ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53.i ], [ %i.ai, %bb.m ], [ @_Py_NotImplementedStruct, %bb.q ], [ null, %PyType_IsSubtype.exit.thread68.i ], [ %i.an, %PyType_IsSubtype.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ap

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !177 ; 3 uses
  %.val69 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.val71 = load ptr, ptr %i.f, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val71, %.val69
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr i8, ptr %.val69, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !203 ; 2 uses
  %.not52 = icmp eq ptr %i.av, null
  br i1 %.not52, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !318
  %i.ay = icmp eq ptr %i.ax, @slot_nb_power
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.az = phi i1 [ false, %bb.w ], [ false, %bb.v ], [ %i.ay, %bb.x ] ; 2 uses
  %i.ba = zext i1 %i.az to i32                    ; 5 uses
  %i.bb = getelementptr i8, ptr %.val71, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !203 ; 2 uses
  %.not53 = icmp eq ptr %i.bc, null
  br i1 %.not53, label %Py_DECREF.exit61, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !318
  %i.bf = icmp eq ptr %i.be, @slot_nb_power
  br i1 %i.bf, label %bb.aa, label %Py_DECREF.exit61

bb.aa:                                            ; preds = %bb.z
  br i1 %i.az, label %bb.ab, label %PyType_IsSubtype.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr i8, ptr %.val69, i64 344
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !165 ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i74, label %.preheader.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %.val.i.i = load i64, ptr %i.bi, align 8, !tbaa !140 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 32
  %i.bk = icmp sgt i64 %.val.i.i, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.bl = add nuw nsw i64 %.013.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %.013.i.i = phi i64 [ %i.bl, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bj, i64 %.013.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !115
  %i.bo = icmp eq ptr %i.bn, %.val71
  br i1 %i.bo, label %PyType_IsSubtype.exit.thread79, label %bb.ad

.preheader.i.i:                                   ; preds = %bb.ab, %bb.ae
  %.05.i.i.i = phi ptr [ %i.br, %bb.ae ], [ %.val69, %bb.ab ] ; 2 uses
  %i.bp = icmp eq ptr %.05.i.i.i, %.val71
  br i1 %i.bp, label %PyType_IsSubtype.exit.thread79, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i.i
  %i.bq = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i75, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.ae
  %.not90 = icmp eq ptr %.val71, @PyBaseObject_Type
  br i1 %.not90, label %PyType_IsSubtype.exit.thread79, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread79:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.bs = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val69, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664)) ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %Py_DECREF.exit61.thread86, label %bb.af

bb.af:                                            ; preds = %PyType_IsSubtype.exit.thread79
  %.not55 = icmp eq i32 %i.bs, 0
  br i1 %.not55, label %PyType_IsSubtype.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %1, ptr %i.b, align 16, !tbaa !115
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.bu, align 8, !tbaa !115
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.bv, align 16, !tbaa !115
  %i.bw = call fastcc ptr @vectorcall_maybe(ptr noundef %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.b, i64 noundef 3) ; 5 uses
  %.not56 = icmp eq ptr %i.bw, @_Py_NotImplementedStruct
  br i1 %.not56, label %bb.ah, label %Py_DECREF.exit61.thread86

bb.ah:                                            ; preds = %bb.ag
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !112 ; 2 uses
  %.not.i60 = icmp sgt i32 %i.bx, -1
  br i1 %.not.i60, label %bb.ai, label %PyType_IsSubtype.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !112
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aj, label %PyType_IsSubtype.exit.thread

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.bw) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.ad, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ac, %PyType_IsSubtype.exit, %bb.aa
  %.2 = phi i32 [ %i.ba, %bb.af ], [ %i.ba, %PyType_IsSubtype.exit ], [ 0, %bb.aa ], [ 1, %bb.ac ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ %i.ba, %bb.ad ] ; 3 uses
  store ptr %0, ptr %i.b, align 16, !tbaa !115
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.ca, align 8, !tbaa !115
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.cb, align 16, !tbaa !115
  %i.cc = call fastcc ptr @vectorcall_maybe(ptr noundef %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68664), ptr noundef %i.b, i64 noundef 3) ; 5 uses
  %.not57 = icmp eq ptr %i.cc, @_Py_NotImplementedStruct
  br i1 %.not57, label %bb.ak, label %Py_DECREF.exit61.thread86

bb.ak:                                            ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.f, align 8, !tbaa !126
  %.val70 = load ptr, ptr %i.e, align 8, !tbaa !126
  %.not91 = icmp eq ptr %.val70, %.val
  br i1 %.not91, label %Py_DECREF.exit61.thread86, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.cd, -1
  br i1 %.not.i, label %bb.am, label %Py_DECREF.exit61

bb.am:                                            ; preds = %bb.al
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !112
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.an, label %Py_DECREF.exit61

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #21
  br label %Py_DECREF.exit61

Py_DECREF.exit61:                                 ; preds = %bb.al, %bb.am, %bb.an, %bb.z, %bb.y
  %.4 = phi i32 [ %i.ba, %bb.y ], [ %i.ba, %bb.z ], [ %.2, %bb.an ], [ %.2, %bb.al ], [ %.2, %bb.am ]
  %.not59 = icmp eq i32 %.4, 0
  br i1 %.not59, label %Py_DECREF.exit61.thread86, label %bb.ao

bb.ao:                                            ; preds = %Py_DECREF.exit61
  store ptr %1, ptr %i.b, align 16, !tbaa !115
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.cg, align 8, !tbaa !115
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.ch, align 16, !tbaa !115
  %i.ci = call fastcc ptr @vectorcall_maybe(ptr noundef %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69664), ptr noundef %i.b, i64 noundef 3)
  br label %Py_DECREF.exit61.thread86

Py_DECREF.exit61.thread86:                        ; preds = %bb.ag, %bb.ak, %PyType_IsSubtype.exit.thread79, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit61, %bb.ao
  %.345 = phi ptr [ %i.ci, %bb.ao ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit61 ], [ %i.bw, %bb.ag ], [ @_Py_NotImplementedStruct, %bb.ak ], [ null, %PyType_IsSubtype.exit.thread79 ], [ %i.cc, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ap

bb.ap:                                            ; preds = %Py_DECREF.exit61.thread86, %slot_nb_power_binary.exit
  %.446 = phi ptr [ %.339.i, %slot_nb_power_binary.exit ], [ %.345, %Py_DECREF.exit61.thread86 ]
  ret ptr %.446
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_ternaryfunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val12.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_pow_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 3 uses
  %i.d = add i64 %.val11.i, -1
  %or.cond.i = icmp ult i64 %i.d, 2
  br i1 %or.cond.i, label %check_pow_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.386, i32 noundef 1, i32 noundef 2, i64 noundef %.val11.i) #21 ; 0 uses
  br label %check_pow_args.exit.thread

check_pow_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = icmp eq i64 %.val11.i, 2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_pow_args.exit
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %check_pow_args.exit
  %.0 = phi ptr [ %i.k, %bb.e ], [ @_Py_NoneStruct, %check_pow_args.exit ]
  %i.l = tail call ptr %2(ptr noundef %0, ptr noundef %i.h, ptr noundef %.0) #21
  br label %check_pow_args.exit.thread

check_pow_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.f
  %.010 = phi ptr [ %i.l, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_ternaryfunc_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val12.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_pow_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 3 uses
  %i.d = add i64 %.val11.i, -1
  %or.cond.i = icmp ult i64 %i.d, 2
  br i1 %or.cond.i, label %check_pow_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.386, i32 noundef 1, i32 noundef 2, i64 noundef %.val11.i) #21 ; 0 uses
  br label %check_pow_args.exit.thread

check_pow_args.exit:                              ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = icmp eq i64 %.val11.i, 2
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_pow_args.exit
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %check_pow_args.exit
  %.0 = phi ptr [ %i.k, %bb.e ], [ @_Py_NoneStruct, %check_pow_args.exit ]
  %i.l = tail call ptr %2(ptr noundef %i.h, ptr noundef %0, ptr noundef %.0) #21
  br label %check_pow_args.exit.thread

check_pow_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.f
  %.010 = phi ptr [ %i.l, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_negative(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67968), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_positive(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68616), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_absolute(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62176), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @slot_nb_bool(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.b = call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63064), ptr noundef nonnull %i.a) ; 6 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr i8, ptr %.val, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.387, ptr noundef %i.g) #21 ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.b, null
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @PyErr_Occurred() #21
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = call fastcc ptr @maybe_call_special_no_args(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67112), ptr noundef null), !inline_history !479 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @PyErr_Occurred() #21
  %.not19 = icmp eq ptr %i.m, null
  br i1 %.not19, label %Py_DECREF.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.e
  %i.n = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.k) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %.014.val = load ptr, ptr %i.o, align 8, !tbaa !126
  %.not29 = icmp eq ptr %.014.val, @PyBool_Type
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.b) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.r = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.388, ptr noundef %0, ptr noundef nonnull %i.b) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.01428 = phi ptr [ %i.k, %bb.g ], [ %i.b, %bb.i ], [ %i.b, %bb.j ] ; 3 uses
  %.0 = phi i32 [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ -1, %bb.j ] ; 3 uses
  %i.s = load i32, ptr %.01428, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.01428, align 8, !tbaa !112
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %.01428) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.m, %bb.l, %bb.k, %.thread, %bb.f, %bb.b
  %.016 = phi i32 [ -1, %bb.b ], [ 1, %bb.f ], [ -1, %.thread ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_inquirypred(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 0
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 0, ptr noundef nonnull @.str.190, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = tail call i32 %2(ptr noundef %0) #21     ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.i = tail call ptr @PyErr_Occurred() #21
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  %i.j = sext i32 %i.g to i64
  %i.k = tail call ptr @PyBool_FromLong(i64 noundef %i.j) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.k, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_invert(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66440), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_lshift(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !324
  %i.j = icmp eq ptr %i.i, @slot_nb_lshift
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !324
  %i.q = icmp eq ptr %i.p, @slot_nb_lshift
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69336)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69336), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67328), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69336), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_rshift(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !325
  %i.j = icmp eq ptr %i.i, @slot_nb_rshift
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !325
  %i.q = icmp eq ptr %i.p, @slot_nb_rshift
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69720)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69720), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69776), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69720), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_and(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.j = icmp eq ptr %i.i, @slot_nb_and
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !326
  %i.q = icmp eq ptr %i.p, @slot_nb_and
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68880)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68880), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 62552), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68880), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_xor(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !327
  %i.j = icmp eq ptr %i.i, @slot_nb_xor
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !327
  %i.q = icmp eq ptr %i.p, @slot_nb_xor
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69944)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69944), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71424), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69944), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_or(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !328
  %i.j = icmp eq ptr %i.i, @slot_nb_or
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !328
  %i.q = icmp eq ptr %i.p, @slot_nb_or
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69560)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69560), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68288), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69560), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_int(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66392), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_float(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64816), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_add(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65704), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_subtract(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66720), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_multiply(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66096), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_remainder(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65984), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_power(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66544), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_lshift(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65872), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_rshift(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66600), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_and(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65760), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_xor(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66888), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_or(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66496), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_floor_divide(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.j = icmp eq ptr %i.i, @slot_nb_floor_divide
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 232
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.q = icmp eq ptr %i.p, @slot_nb_floor_divide
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69280)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69280), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64928), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69280), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_true_divide(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341
  %i.j = icmp eq ptr %i.i, @slot_nb_true_divide
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 240
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !341
  %i.q = icmp eq ptr %i.p, @slot_nb_true_divide
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69888)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69888), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70784), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69888), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_floor_divide(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65816), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_true_divide(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66832), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_index(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 66152), ptr noundef %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_matrix_multiply(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !126 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val63 = load ptr, ptr %i.e, align 8, !tbaa !126 ; 5 uses
  %.not = icmp eq ptr %.val63, %.val61
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val61, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346
  %i.j = icmp eq ptr %i.i, @slot_nb_matrix_multiply
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = zext i1 %i.k to i32                      ; 5 uses
  %i.m = getelementptr i8, ptr %.val63, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %Py_DECREF.exit53, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 272
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !346
  %i.q = icmp eq ptr %i.p, @slot_nb_matrix_multiply
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.g, label %PyType_IsSubtype.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.val61, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = icmp sgt i64 %.val.i.i, 0
  br i1 %i.v, label %.lr.ph.i.i, label %PyType_IsSubtype.exit.thread

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.013.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %.val.i.i
  br i1 %exitcond.not.i.i, label %PyType_IsSubtype.exit.thread, label %.lr.ph.i.i, !llvm.loop !166

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.013.i.i = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.013.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq ptr %i.y, %.val63
  br i1 %i.z, label %PyType_IsSubtype.exit.thread68, label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.j
  %.05.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.val61, %bb.g ] ; 2 uses
  %i.aa = icmp eq ptr %.05.i.i.i, %.val63
  br i1 %i.aa, label %PyType_IsSubtype.exit.thread68, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ab = getelementptr i8, ptr %.05.i.i.i, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %PyType_IsSubtype.exit, label %.preheader.i.i, !llvm.loop !168

PyType_IsSubtype.exit:                            ; preds = %bb.j
  %.not79 = icmp eq ptr %.val63, @PyBaseObject_Type
  br i1 %.not79, label %PyType_IsSubtype.exit.thread68, label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread68:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %PyType_IsSubtype.exit
  %i.ad = tail call fastcc i32 @method_is_overloaded(ptr noundef %0, ptr %.val61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69392)) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit53.thread75, label %bb.k

bb.k:                                             ; preds = %PyType_IsSubtype.exit.thread68
  %.not47 = icmp eq i32 %i.ad, 0
  br i1 %.not47, label %PyType_IsSubtype.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !115
  %i.ag = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69392), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not48 = icmp eq ptr %i.ag, @_Py_NotImplementedStruct
  br i1 %.not48, label %bb.m, label %Py_DECREF.exit53.thread75

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !112 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i52, label %bb.n, label %PyType_IsSubtype.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !112
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %PyType_IsSubtype.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #21
  br label %PyType_IsSubtype.exit.thread

PyType_IsSubtype.exit.thread:                     ; preds = %bb.i, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %PyType_IsSubtype.exit, %bb.f
  %.2 = phi i32 [ %i.l, %bb.k ], [ %i.l, %PyType_IsSubtype.exit ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.i ] ; 3 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ak, align 8, !tbaa !115
  %i.al = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67544), ptr noundef %i.a, i64 noundef 2) ; 5 uses
  %.not49 = icmp eq ptr %i.al, @_Py_NotImplementedStruct
  br i1 %.not49, label %bb.p, label %Py_DECREF.exit53.thread75

bb.p:                                             ; preds = %PyType_IsSubtype.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !126
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !126
  %.not80 = icmp eq ptr %.val62, %.val
  br i1 %.not80, label %Py_DECREF.exit53.thread75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit53

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !112
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %Py_DECREF.exit53

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #21
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.e, %bb.d
  %.4 = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.2, %bb.r ]
  %.not51 = icmp eq i32 %.4, 0
  br i1 %.not51, label %Py_DECREF.exit53.thread75, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit53
  store ptr %1, ptr %i.a, align 16, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = call fastcc ptr @vectorcall_maybe(ptr noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69392), ptr noundef %i.a, i64 noundef 2)
  br label %Py_DECREF.exit53.thread75

Py_DECREF.exit53.thread75:                        ; preds = %bb.l, %bb.p, %PyType_IsSubtype.exit.thread68, %PyType_IsSubtype.exit.thread, %Py_DECREF.exit53, %bb.t
  %.339 = phi ptr [ %i.aq, %bb.t ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit53 ], [ %i.ag, %bb.l ], [ @_Py_NotImplementedStruct, %bb.p ], [ null, %PyType_IsSubtype.exit.thread68 ], [ %i.al, %PyType_IsSubtype.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.339
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_nb_inplace_matrix_multiply(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65928), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @slot_sq_length(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !115
  %i.b = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67112), ptr noundef %i.a, i64 noundef 1) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_PyNumber_Index(ptr noundef nonnull %i.b) #21 ; 9 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %.not.i16 = icmp sgt i32 %i.e, -1
  br i1 %.not.i16, label %bb.c, label %Py_DECREF.exit17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !112
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit17

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #21
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %bb.b, %bb.c, %bb.d
  %i.h = icmp eq ptr %i.d, null
  br i1 %i.h, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit17
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !490
  %i.j = and i64 %.val, 3
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %.not.i14 = icmp sgt i32 %i.l, -1
  br i1 %.not.i14, label %bb.g, label %Py_DECREF.exit15

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.d, align 8, !tbaa !112
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit15

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #21
  br label %Py_DECREF.exit15

Py_DECREF.exit15:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !115
  call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.389) #21
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !115
  %i.q = call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %i.d, ptr noundef %i.p) #21 ; 3 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !112
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %Py_DECREF.exit17, %bb.a, %Py_DECREF.exit15
  %.0 = phi i64 [ -1, %Py_DECREF.exit17 ], [ -1, %bb.a ], [ -1, %Py_DECREF.exit15 ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @wrap_lenfunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !126
  %.not.i = icmp eq ptr %.val8.i, @PyTuple_Type
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.372) #21
  br label %check_num_args.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.d = icmp eq i64 %.val7.i, 0
  br i1 %i.d, label %check_num_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.373, i32 noundef 0, ptr noundef nonnull @.str.190, i64 noundef %.val7.i) #21 ; 0 uses
  br label %check_num_args.exit.thread

check_num_args.exit:                              ; preds = %bb.c
  %i.g = tail call i64 %2(ptr noundef %0) #21     ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %check_num_args.exit
  %i.i = tail call ptr @PyErr_Occurred() #21
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.f, label %check_num_args.exit.thread

bb.f:                                             ; preds = %bb.e, %check_num_args.exit
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.g) #21
  br label %check_num_args.exit.thread

check_num_args.exit.thread:                       ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.j, %bb.f ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @slot_mp_subscript(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65368), ptr noundef %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @slot_mp_ass_subscript(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !115
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 64224), ptr noundef %i.a, i64 noundef 2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.e, align 16, !tbaa !115
  %i.f = call fastcc ptr @vectorcall_method(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70160), ptr noundef %i.a, i64 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]  ; 4 uses
  %i.g = icmp eq ptr %.0, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %.0, align 8, !tbaa !112   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

end_hunk_1
begin_hunk_2_@super_init_impl:bb.a

PyCell_GetRef.exit.i:                             ; preds = %bb.i
  %i.at = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.406) #21
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !112 ; 2 uses
  %i.av = icmp ugt i32 %i.au, -1073741825
  br i1 %i.av, label %Py_INCREF.exit.i, label %Py_INCREF.exit.sink.split.i

Py_INCREF.exit.sink.split.i:                      ; preds = %bb.k, %bb.j
  %.sink97.i = phi i32 [ %i.ar, %bb.j ], [ %i.au, %bb.k ]
  %.val70.sink.i = phi ptr [ %.val70.i, %bb.j ], [ %i.ab, %bb.k ] ; 2 uses
  %i.aw = add nuw i32 %.sink97.i, 1
  store i32 %i.aw, ptr %.val70.sink.i, align 8, !tbaa !112
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %Py_INCREF.exit.sink.split.i, %bb.k, %bb.j
  %.037.i = phi ptr [ %.val70.i, %bb.j ], [ %i.ab, %bb.k ], [ %.val70.sink.i, %Py_INCREF.exit.sink.split.i ] ; 13 uses
  %i.ax = getelementptr i8, ptr %.pre-phi73, i64 72 ; 2 uses
  %.val71.i = load i32, ptr %i.ax, align 8, !tbaa !506 ; 2 uses
  %i.ay = getelementptr i8, ptr %.pre-phi73, i64 88
  %.val72.i = load i32, ptr %i.ay, align 8, !tbaa !507
  %i.az = sub i32 %.val71.i, %.val72.i            ; 2 uses
  %i.ba = icmp slt i32 %i.az, %.val71.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Py_INCREF.exit.i
  %i.bb = getelementptr i8, ptr %.pre-phi73, i64 96
  %i.bc = sext i32 %i.az to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !506
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next.i, %i.be
  br i1 %i.bf, label %bb.m, label %._crit_edge.i, !llvm.loop !508

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !509
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !115
  %i.bk = tail call i32 @_PyUnicode_Equal(ptr noundef %i.bj, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63512)) #21
  %.not49.i = icmp eq i32 %i.bk, 0
  br i1 %.not49.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, -2                       ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val65.i = load ptr, ptr %i.bq, align 8, !tbaa !126
  %.not83.i = icmp eq ptr %.val65.i, @PyCell_Type
  br i1 %.not83.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.br, ptr noundef nonnull @.str.407) #21
  %i.bs = load i32, ptr %.037.i, align 8, !tbaa !112 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i58.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %.037.i, align 8, !tbaa !112
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %.037.i) #21
  br label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.o
  %i.bv = getelementptr i8, ptr %i.bo, i64 16
  %.val69.i = load ptr, ptr %i.bv, align 8, !tbaa !504 ; 8 uses
  %.not.i.i.i73.i = icmp eq ptr %.val69.i, null
  br i1 %.not.i.i.i73.i, label %PyCell_GetRef.exit74.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %.val69.i, align 8, !tbaa !112 ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, -1073741825
  br i1 %i.bx, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw i32 %i.bw, 1
  store i32 %i.by, ptr %.val69.i, align 8, !tbaa !112
  br label %bb.x

PyCell_GetRef.exit74.i:                           ; preds = %bb.s
  %i.bz = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.bz, ptr noundef nonnull @.str.408) #21
  %i.ca = load i32, ptr %.037.i, align 8, !tbaa !112 ; 2 uses
  %.not.i56.i = icmp sgt i32 %i.ca, -1
  br i1 %.not.i56.i, label %bb.v, label %Py_DECREF.exit

bb.v:                                             ; preds = %PyCell_GetRef.exit74.i
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %.037.i, align 8, !tbaa !112
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.w, label %Py_DECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %.037.i) #21
  br label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cd = getelementptr i8, ptr %.val69.i, i64 8
  %.val64.i = load ptr, ptr %i.cd, align 8, !tbaa !126 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val64.i, i64 168
  %.val64.val.i = load i64, ptr %i.ce, align 8, !tbaa !118
  %i.cf = and i64 %.val64.val.i, 2147483648
  %.not84.i = icmp eq i64 %i.cf, 0
  br i1 %.not84.i, label %bb.y, label %super_init_without_args.exit

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !115
  %i.ch = getelementptr i8, ptr %.val64.i, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !153
  %i.cj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cg, ptr noundef nonnull @.str.409, ptr noundef %i.ci) #21 ; 0 uses
  %i.ck = load i32, ptr %.val69.i, align 8, !tbaa !112 ; 2 uses
  %.not.i54.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i54.i, label %bb.z, label %Py_DECREF.exit55.i

bb.z:                                             ; preds = %bb.y
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %.val69.i, align 8, !tbaa !112
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aa, label %Py_DECREF.exit55.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val69.i) #21
  br label %Py_DECREF.exit55.i

Py_DECREF.exit55.i:                               ; preds = %bb.aa, %bb.z, %bb.y
  %i.cn = load i32, ptr %.037.i, align 8, !tbaa !112 ; 2 uses
  %.not.i52.i = icmp sgt i32 %i.cn, -1
  br i1 %.not.i52.i, label %bb.ab, label %Py_DECREF.exit

bb.ab:                                            ; preds = %Py_DECREF.exit55.i
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %.037.i, align 8, !tbaa !112
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ac, label %Py_DECREF.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.037.i) #21
  br label %Py_DECREF.exit

._crit_edge.i:                                    ; preds = %bb.l, %Py_INCREF.exit.i
  %i.cq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !115
  tail call void @PyErr_SetString(ptr noundef %i.cq, ptr noundef nonnull @.str.410) #21
  %i.cr = load i32, ptr %.037.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i34 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i.i34, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %._crit_edge.i
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %.037.i, align 8, !tbaa !112
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %.037.i) #21
  br label %Py_DECREF.exit

bb.af:                                            ; preds = %bb.a
  %i.cu = load i32, ptr %1, align 8, !tbaa !112   ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, -1073741825
  br i1 %i.cv, label %Py_INCREF.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = add nuw i32 %i.cu, 1
  store i32 %i.cw, ptr %1, align 8, !tbaa !112
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.af, %bb.ag
  %.not.i35 = icmp eq ptr %2, null
  br i1 %.not.i35, label %Py_DECREF.exit30.thread, label %bb.ah

bb.ah:                                            ; preds = %Py_INCREF.exit
  %i.cx = load i32, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, -1073741825
  br i1 %i.cy, label %super_init_without_args.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = add nuw i32 %i.cx, 1
  store i32 %i.cz, ptr %2, align 8, !tbaa !112
  br label %super_init_without_args.exit

super_init_without_args.exit:                     ; preds = %bb.ai, %bb.ah, %bb.x
  %.053 = phi ptr [ %.val69.i, %bb.x ], [ %1, %bb.ai ], [ %1, %bb.ah ] ; 8 uses
  %.0 = phi ptr [ %.037.i, %bb.x ], [ %2, %bb.ai ], [ %2, %bb.ah ] ; 9 uses
  %i.da = icmp eq ptr %.0, @_Py_NoneStruct
  br i1 %i.da, label %bb.aj, label %Py_DECREF.exit30

bb.aj:                                            ; preds = %super_init_without_args.exit
  %i.db = load i32, ptr %.0, align 8, !tbaa !112  ; 2 uses
  %.not.i29 = icmp sgt i32 %i.db, -1
  br i1 %.not.i29, label %bb.ak, label %Py_DECREF.exit30.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %.0, align 8, !tbaa !112
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.al, label %Py_DECREF.exit30.thread

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #21
  br label %Py_DECREF.exit30.thread

Py_DECREF.exit30:                                 ; preds = %super_init_without_args.exit
  %i.de = tail call fastcc ptr @supercheck(ptr noundef nonnull %.053, ptr noundef nonnull %.0) ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.am, label %Py_DECREF.exit30.thread

bb.am:                                            ; preds = %Py_DECREF.exit30
  %i.dg = load i32, ptr %.053, align 8, !tbaa !112 ; 2 uses
  %.not.i27 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i27, label %bb.an, label %Py_DECREF.exit28

bb.an:                                            ; preds = %bb.am
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %.053, align 8, !tbaa !112
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ao, label %Py_DECREF.exit28

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %.053) #21
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %bb.am, %bb.an, %bb.ao
  %i.dj = load i32, ptr %.0, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp sgt i32 %i.dj, -1
  br i1 %.not.i, label %bb.ap, label %Py_DECREF.exit

bb.ap:                                            ; preds = %Py_DECREF.exit28
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %.0, align 8, !tbaa !112
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aq, label %Py_DECREF.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #21
  br label %Py_DECREF.exit

Py_DECREF.exit30.thread:                          ; preds = %Py_INCREF.exit, %bb.al, %bb.ak, %bb.aj, %Py_DECREF.exit30
  %.167 = phi ptr [ %.0, %Py_DECREF.exit30 ], [ null, %Py_INCREF.exit ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ]
  %.0536266 = phi ptr [ %.053, %Py_DECREF.exit30 ], [ %1, %Py_INCREF.exit ], [ %.053, %bb.al ], [ %.053, %bb.ak ], [ %.053, %bb.aj ]
  %.020 = phi ptr [ %i.de, %Py_DECREF.exit30 ], [ null, %Py_INCREF.exit ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ]
  %i.dm = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !142 ; 4 uses
  store ptr %.0536266, ptr %i.dm, align 8, !tbaa !142
  %.not.i37 = icmp eq ptr %i.dn, null
  br i1 %.not.i37, label %Py_XDECREF.exit, label %bb.ar

bb.ar:                                            ; preds = %Py_DECREF.exit30.thread
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !112 ; 2 uses
  %.not.i.i38 = icmp sgt i32 %i.do, -1
  br i1 %.not.i.i38, label %bb.as, label %Py_XDECREF.exit

bb.as:                                            ; preds = %bb.ar
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !112
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.at, label %Py_XDECREF.exit

bb.at:                                            ; preds = %bb.as
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dn) #21
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit30.thread, %bb.ar, %bb.as, %bb.at
  %i.dr = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !115 ; 4 uses
  store ptr %.167, ptr %i.dr, align 8, !tbaa !115
  %.not.i39 = icmp eq ptr %i.ds, null
  br i1 %.not.i39, label %Py_XDECREF.exit41, label %bb.au

bb.au:                                            ; preds = %Py_XDECREF.exit
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !112 ; 2 uses
  %.not.i.i40 = icmp sgt i32 %i.dt, -1
  br i1 %.not.i.i40, label %bb.av, label %Py_XDECREF.exit41

bb.av:                                            ; preds = %bb.au
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !112
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.aw, label %Py_XDECREF.exit41

bb.aw:                                            ; preds = %bb.av
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ds) #21
  br label %Py_XDECREF.exit41

Py_XDECREF.exit41:                                ; preds = %Py_XDECREF.exit, %bb.au, %bb.av, %bb.aw
  %i.dw = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !142 ; 4 uses
  store ptr %.020, ptr %i.dw, align 8, !tbaa !142
  %.not.i42 = icmp eq ptr %i.dx, null
  br i1 %.not.i42, label %Py_DECREF.exit, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit41
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !112 ; 2 uses
  %.not.i.i43 = icmp sgt i32 %i.dy, -1
  br i1 %.not.i.i43, label %bb.ay, label %Py_DECREF.exit

bb.ay:                                            ; preds = %bb.ax
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !112
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.az, label %Py_DECREF.exit

bb.az:                                            ; preds = %bb.ay
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dx) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ab, %Py_DECREF.exit55.i, %bb.v, %PyCell_GetRef.exit74.i, %bb.q, %bb.p, %bb.w, %bb.r, %bb.ad, %._crit_edge.i, %bb.ac, %bb.ae, %PyCell_GetRef.exit.i, %bb.f, %bb.d, %bb.az, %bb.ay, %bb.ax, %Py_XDECREF.exit41, %bb.aq, %bb.ap, %Py_DECREF.exit28, %.critedge
  %.2 = phi i32 [ -1, %.critedge ], [ -1, %bb.aq ], [ 0, %bb.az ], [ -1, %Py_DECREF.exit28 ], [ -1, %bb.ap ], [ 0, %Py_XDECREF.exit41 ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %PyCell_GetRef.exit.i ], [ -1, %bb.ae ], [ -1, %bb.ac ], [ -1, %._crit_edge.i ], [ -1, %bb.ad ], [ -1, %bb.r ], [ -1, %bb.w ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %PyCell_GetRef.exit74.i ], [ -1, %bb.v ], [ -1, %Py_DECREF.exit55.i ], [ -1, %bb.ab ]
  ret i32 %.2
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !16, i64 360}
!12 = !{!"_typeobject", !13, i64 0, !18, i64 24, !17, i64 32, !17, i64 40, !16, i64 48, !17, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !17, i64 168, !18, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !17, i64 208, !16, i64 216, !16, i64 224, !19, i64 232, !20, i64 240, !21, i64 248, !15, i64 256, !22, i64 264, !16, i64 272, !16, i64 280, !17, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !16, i64 360, !22, i64 368, !16, i64 376, !8, i64 384, !16, i64 392, !16, i64 400, !9, i64 408, !23, i64 410}
!13 = !{!"PyVarObject", !14, i64 0, !17, i64 16}
!14 = !{!"_object", !9, i64 0, !15, i64 8}
!15 = !{!"p1 _ZTS11_typeobject", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!"p1 _ZTS11PyMethodDef", !16, i64 0}
!20 = !{!"p1 _ZTS11PyMemberDef", !16, i64 0}
!21 = !{!"p1 _ZTS11PyGetSetDef", !16, i64 0}
!22 = !{!"p1 _ZTS7_object", !16, i64 0}
!23 = !{!"short", !9, i64 0}
!24 = !{!25, !15, i64 0}
!25 = !{!"", !15, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !22, i64 24, !22, i64 32, !22, i64 40}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS3_is", !16, i64 0}
!28 = !{!29, !17, i64 180320}
!29 = !{!"_is", !30, i64 0, !27, i64 7264, !17, i64 7272, !17, i64 7280, !8, i64 7288, !17, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !17, i64 7320, !35, i64 7328, !37, i64 7376, !33, i64 7384, !17, i64 7392, !38, i64 7400, !22, i64 7680, !22, i64 7688, !42, i64 7696, !46, i64 7832, !17, i64 8040, !47, i64 8048, !48, i64 8080, !17, i64 8536, !22, i64 8544, !22, i64 8552, !22, i64 8560, !16, i64 8568, !9, i64 8576, !9, i64 8640, !17, i64 8648, !9, i64 8656, !53, i64 10696, !22, i64 10744, !22, i64 10752, !22, i64 10760, !58, i64 10768, !59, i64 10832, !61, i64 10848, !64, i64 10872, !67, i64 10928, !34, i64 10944, !69, i64 10952, !22, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !70, i64 11168, !73, i64 11832, !77, i64 11888, !78, i64 11896, !80, i64 14336, !81, i64 79880, !83, i64 79896, !84, i64 79968, !85, i64 80000, !86, i64 80024, !87, i64 82008, !91, i64 223296, !9, i64 223328, !62, i64 223384, !62, i64 223385, !92, i64 223386, !93, i64 223400, !93, i64 223408, !93, i64 223416, !93, i64 223424, !17, i64 223432, !94, i64 223440, !16, i64 223448, !95, i64 223456, !63, i64 223472, !63, i64 223473, !17, i64 223480, !17, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !96, i64 224840, !97, i64 224928, !17, i64 225064, !101, i64 225072}
!30 = !{!"_ceval_state", !17, i64 0, !8, i64 8, !31, i64 16, !8, i64 24, !32, i64 32}
!31 = !{!"p1 _ZTS18_gil_runtime_state", !16, i64 0}
!32 = !{!"_pending_calls", !33, i64 0, !34, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!33 = !{!"p1 _ZTS3_ts", !16, i64 0}
!34 = !{!"PyMutex", !9, i64 0}
!35 = !{!"pythreads", !17, i64 0, !33, i64 8, !36, i64 16, !33, i64 24, !17, i64 32, !17, i64 40}
!36 = !{!"p1 _ZTS18_PyThreadStateImpl", !16, i64 0}
!37 = !{!"p1 _ZTS14pyruntimestate", !16, i64 0}
!38 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !39, i64 8, !9, i64 32, !39, i64 80, !9, i64 104, !8, i64 224, !41, i64 232, !22, i64 240, !22, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!39 = !{!"gc_generation", !40, i64 0, !8, i64 16, !8, i64 20}
!40 = !{!"", !17, i64 0, !17, i64 8}
!41 = !{!"p1 _ZTS19_PyInterpreterFrame", !16, i64 0}
!42 = !{!"_import_state", !22, i64 0, !22, i64 8, !22, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !22, i64 40, !22, i64 48, !8, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !43, i64 88, !45, i64 112}
!43 = !{!"", !34, i64 0, !44, i64 8, !17, i64 16}
!44 = !{!"long long", !9, i64 0}
!45 = !{!"", !8, i64 0, !17, i64 8, !8, i64 16}
!46 = !{!"_gil_runtime_state", !17, i64 0, !33, i64 8, !8, i64 16, !17, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!47 = !{!"codecs_state", !22, i64 0, !22, i64 8, !22, i64 16, !8, i64 24}
!48 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !49, i64 64, !8, i64 72, !8, i64 76, !49, i64 80, !49, i64 88, !49, i64 96, !8, i64 104, !50, i64 112, !50, i64 128, !50, i64 144, !50, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !49, i64 288, !49, i64 296, !49, i64 304, !49, i64 312, !8, i64 320, !50, i64 328, !49, i64 344, !49, i64 352, !49, i64 360, !49, i64 368, !49, i64 376, !49, i64 384, !49, i64 392, !8, i64 400, !49, i64 408, !49, i64 416, !49, i64 424, !49, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
end_hunk_2
