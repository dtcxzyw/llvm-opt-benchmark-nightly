inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@getargs_positional_only_and_keywords:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_s(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.d = call ptr @PyBytes_FromString(ptr noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_s_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.e = load i64, ptr %i.b, align 8, !tbaa !31
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.d, i64 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_s_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %i.d) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_tuple(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = load i32, ptr %i.b, align 4, !tbaa !6
  %i.g = load i32, ptr %i.c, align 4, !tbaa !6
  %i.h = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.78, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_w_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  store i8 91, ptr %i.e, align 1, !tbaa !10
  %i.f = load i64, ptr %i.b, align 8, !tbaa !37
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  store i8 93, ptr %i.h, align 1, !tbaa !10
  %.pre = load i64, ptr %i.b, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ]
  %i.j = load ptr, ptr %2, align 8, !tbaa !34
  %i.k = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.j, i64 noundef %i.i) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_w_star_opt(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 1, ptr %i.a, align 4, !tbaa !6
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  store i8 91, ptr %i.f, align 1, !tbaa !10
  %i.g = load i64, ptr %i.c, align 8, !tbaa !37
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  store i8 93, ptr %i.i, align 1, !tbaa !10
  %.pre = load i64, ptr %i.c, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.k = load ptr, ptr %2, align 8, !tbaa !34
  %i.l = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.k, i64 noundef %i.j) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_empty(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq ptr %.val15, @PyTuple_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 264, ptr noundef nonnull @__PRETTY_FUNCTION__.getargs_empty) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq ptr %2, null
  br i1 %cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !23
  %.not16 = icmp eq ptr %.val, @PyDict_Type
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 265, ptr noundef nonnull @__PRETTY_FUNCTION__.getargs_empty) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %.val5.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @PyDict_Type, i64 168), align 8, !tbaa !38
  %i.c = and i64 %.val5.i, 536870912
  %.not.i.not = icmp eq i64 %i.c, 0
  br i1 %.not.i.not, label %PyObject_TypeCheck.exit.i, label %PyDict_GET_SIZE.exit

PyObject_TypeCheck.exit.i:                        ; preds = %bb.f
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef nonnull @PyDict_Type, ptr noundef nonnull @PyFrozenDict_Type) #7
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.g, label %PyDict_GET_SIZE.exit

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef 55, ptr noundef nonnull @__PRETTY_FUNCTION__.PyDict_GET_SIZE) #8
  unreachable

PyDict_GET_SIZE.exit:                             ; preds = %bb.f, %PyObject_TypeCheck.exit.i
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %PyDict_GET_SIZE.exit
  %i.h = tail call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.100, ptr noundef nonnull @getargs_empty.kwlist) #7
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %PyDict_GET_SIZE.exit
  %i.i = tail call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.100) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.h, %bb.h ], [ %i.i, %bb.i ]  ; 2 uses
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = sext i32 %.0 to i64
  %i.k = tail call ptr @PyLong_FromLong(i64 noundef %i.j) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.010 = phi ptr [ %i.k, %bb.k ], [ null, %bb.j ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_y(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.d = call ptr @PyBytes_FromString(ptr noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_y_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.e = load i64, ptr %i.b, align 8, !tbaa !31
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.d, i64 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_y_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %i.d) #7
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @PyBytes_FromString(ptr noundef nonnull %i.c) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !tbaa !31
  %i.f = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.d, i64 noundef %i.e) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getargs_z_star(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.b, i64 noundef %i.d) #7
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !10 ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr @_Py_NoneStruct, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ]
  call void @PyBuffer_Release(ptr noundef nonnull %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Py_NewRef.exit
  %.03 = phi ptr [ %.0, %_Py_NewRef.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.03
}

; Function Attrs: nounwind uwtable
define internal ptr @parse_tuple_and_keywords(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
end_hunk_0
