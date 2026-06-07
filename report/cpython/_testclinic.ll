inline.NumInlined: 454
inline.NumDeleted: 130
begin_hunk_0_@null_or_tuple_for_varargs:bb.a
bb.m:                                             ; preds = %bb.k
  %i.x = call ptr @PyTuple_New(i64 noundef 0) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = phi ptr [ %i.w, %bb.l ], [ %i.x, %bb.m ] ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %Py_XDECREF.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i38 = icmp eq ptr %i.p, null
  br i1 %.not.i38, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.91, i32 noundef 1333, ptr noundef nonnull @__PRETTY_FUNCTION__.null_or_tuple_for_varargs_impl) #12
  unreachable

bb.q:                                             ; preds = %bb.o
  %.not6.i = icmp eq i32 %.0, 0
  %i.aa = select i1 %.not6.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.ab = call ptr (i32, ...) @pack_arguments_newref(i32 noundef 3, ptr noundef nonnull %i.p, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa) ; 3 uses
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !10  ; 2 uses
  %.not.i.i40 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i40, label %bb.r, label %Py_XDECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !10
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.s, label %Py_XDECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.i, %bb.n, %bb.j, %bb.q, %bb.r, %bb.s
  %.02949 = phi ptr [ %i.ab, %bb.r ], [ %i.ab, %bb.s ], [ %i.ab, %bb.q ], [ null, %bb.j ], [ null, %bb.n ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.02949
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @clone_f1(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = icmp eq ptr %3, null
  %i.d = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @clone_f1._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %.val, i64 168
  %.val26 = load i64, ptr %i.j, align 8, !tbaa !17
  %i.k = and i64 %.val26, 268435456
  %.not24 = icmp eq i64 %i.k, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.105, ptr noundef nonnull %i.h) #11
  br label %bb.g

bb.d:                                             ; preds = %.thread
  %i.l = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #13
  %i.o = load i64, ptr %i.b, align 8, !tbaa !41
  %.not25 = icmp eq i64 %i.n, %i.o
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.200) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ @_Py_NoneStruct, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @clone_f2(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = icmp eq ptr %3, null
  %i.d = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @clone_f2._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %.val, i64 168
  %.val26 = load i64, ptr %i.j, align 8, !tbaa !17
  %i.k = and i64 %.val26, 268435456
  %.not24 = icmp eq i64 %i.k, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.105, ptr noundef nonnull %i.h) #11
  br label %bb.g

bb.d:                                             ; preds = %.thread
  %i.l = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #13
  %i.o = load i64, ptr %i.b, align 8, !tbaa !41
  %.not25 = icmp eq i64 %i.n, %i.o
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.200) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ @_Py_NoneStruct, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @clone_with_conv_f1(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val3.i = load i64, ptr %i.c, align 8, !tbaa !17
  %i.d = and i64 %.val3.i, 67108864
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not3.i.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %2, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread27, label %.thread

.thread:                                          ; preds = %bb.f, %bb.h
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @clone_with_conv_f1._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.i, label %.thread27

.thread27:                                        ; preds = %.thread, %bb.h
  %i.h = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.63) #11
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.thread27
  %.0 = phi ptr [ %i.h, %.thread27 ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @clone_with_conv_f2(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val3.i = load i64, ptr %i.c, align 8, !tbaa !17
  %i.d = and i64 %.val3.i, 67108864
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not3.i.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %2, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread27, label %.thread

.thread:                                          ; preds = %bb.f, %bb.h
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @clone_with_conv_f2._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.i, label %.thread27

.thread27:                                        ; preds = %.thread, %bb.h
  %i.h = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.64) #11
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.thread27
  %.0 = phi ptr [ %i.h, %.thread27 ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @depr_star_pos0_len1(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %i.d = tail call i32 @PyErr_WarnEx(ptr noundef %i.c, ptr noundef nonnull @.str.201, i64 noundef 1) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread23, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @depr_star_pos0_len1._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.d, label %.thread23

.thread23:                                        ; preds = %bb.c, %.thread
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %.thread23
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.thread23 ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @depr_star_pos0_len2(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %i.d = tail call i32 @PyErr_WarnEx(ptr noundef %i.c, ptr noundef nonnull @.str.202, i64 noundef 1) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null
  %i.f = icmp eq i64 %2, 2
  %or.cond5 = and i1 %i.f, %i.e
  %i.g = icmp ne ptr %1, null
  %or.cond7 = and i1 %i.g, %or.cond5
  br i1 %or.cond7, label %.thread28, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @depr_star_pos0_len2._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.d, label %.thread28

.thread28:                                        ; preds = %bb.c, %.thread
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %.thread28
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.thread28 ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @depr_star_pos0_len3_with_kwd(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %i.d = tail call i32 @PyErr_WarnEx(ptr noundef %i.c, ptr noundef nonnull @.str.203, i64 noundef 1) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @depr_star_pos0_len3_with_kwd._parser, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not17 = icmp eq ptr %i.e, null
  %spec.select = select i1 %.not17, ptr null, ptr @_Py_NoneStruct
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @depr_star_pos1_len1_opt(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %PyTuple_GET_SIZE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val3.i = load i64, ptr %i.c, align 8, !tbaa !17
  %i.d = and i64 %.val3.i, 67108864
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not3.i.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.g, label %PyTuple_GET_SIZE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyTuple_GET_SIZE.exit:                            ; preds = %bb.f, %bb.a
  %i.e = icmp eq i64 %2, 2
  br i1 %i.e, label %bb.h, label %bb.i

bb.h:                                             ; preds = %PyTuple_GET_SIZE.exit
  %i.f = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %i.g = tail call i32 @PyErr_WarnEx(ptr noundef %i.f, ptr noundef nonnull @.str.204, i64 noundef 1) #11
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %PyTuple_GET_SIZE.exit
  %i.h = add i64 %2, -1
  %i.i = icmp ult i64 %i.h, 2
  %i.j = icmp ne ptr %1, null
  %i.k = and i1 %i.j, %i.i
  %or.cond5 = and i1 %.not, %i.k
  br i1 %or.cond5, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @depr_star_pos1_len1_opt._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %bb.h
  %.024 = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ @_Py_NoneStruct, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @depr_star_pos1_len1(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq i64 %2, 2
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %i.d = tail call i32 @PyErr_WarnEx(ptr noundef %i.c, ptr noundef nonnull @.str.205, i64 noundef 1) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread25, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @depr_star_pos1_len1._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.d, label %.thread25

end_hunk_0
