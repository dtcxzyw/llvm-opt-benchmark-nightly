inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_startswith:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #17
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !67
  %i.p = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !14
  %i.s = getelementptr i8, ptr %0, i64 40
  %.val8.i.i = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !25
  %i.u = call ptr @_Py_bytes_startswith(ptr noundef %.val8.i.i, i64 noundef %.val.i.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #17, !inline_history !101
  %i.v = load i64, ptr %i.p, align 8, !tbaa !14
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.p, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.u, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_strip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.68, i64 noundef %2, i64 noundef 0, i64 noundef 1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc ptr @bytearray_strip_impl_helper(ptr noundef readonly %0, ptr noundef %.0, i32 noundef 2), !inline_history !212
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.08 = phi ptr [ %i.d, %bb.e ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_swapcase(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val10.i = load i64, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %i.b = icmp slt i64 %.val10.i, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str) #17, !inline_history !213
  br label %stringlib_swapcase.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !213 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %stringlib_swapcase.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.d, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !14
  %i.g = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val10.i) #17, !inline_history !213 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 56
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.i, label %bb.f, label %stringlib_swapcase.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !22
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %stringlib_swapcase.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #17, !inline_history !213
  br label %stringlib_swapcase.exit

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  %i.n = getelementptr i8, ptr %i.d, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr i8, ptr %i.d, i64 32
  store ptr %i.m, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr i8, ptr %i.d, i64 16
  store i64 %.val10.i, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr i8, ptr %i.d, i64 24
  store i64 %.val10.i, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !23
  %.val9.i = load i64, ptr %i.a, align 8, !tbaa !25
  tail call void @_Py_bytes_swapcase(ptr noundef %i.m, ptr noundef %.val.i, i64 noundef %.val9.i) #17, !inline_history !214
  br label %stringlib_swapcase.exit

stringlib_swapcase.exit:                          ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.d, %bb.h ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_take_bytes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.70, i64 noundef %2, i64 noundef 0, i64 noundef 1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bytearray_take_bytes_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i10 = load i64, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 4 uses
  %i.f = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val67.i = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr i8, ptr %.val67.i, i64 96
  %.val67.val.i = load ptr, ptr %i.h, align 8, !tbaa !68 ; 2 uses
  %.not.i68.i = icmp eq ptr %.val67.val.i, null
  br i1 %.not.i68.i, label %_PyIndex_Check.exit.thread.i, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %bb.e
  %i.i = getelementptr i8, ptr %.val67.val.i, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %.not72.i = icmp eq ptr %i.j, null
  br i1 %.not72.i, label %_PyIndex_Check.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_PyIndex_Check.exit.i
  %i.k = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !11
  %i.l = tail call i64 @PyNumber_AsSsize_t(ptr noundef %i.d, ptr noundef %i.k) #17 ; 3 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyErr_Occurred() #17
  %.not62.i = icmp eq ptr %i.n, null
  br i1 %.not62.i, label %bb.h, label %bytearray_take_bytes_impl.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = icmp slt i64 %i.l, 0
  %i.p = select i1 %i.o, i64 %.val.i, i64 0
  %spec.select.i = add i64 %i.p, %i.l
  br label %bb.i

_PyIndex_Check.exit.thread.i:                     ; preds = %_PyIndex_Check.exit.i, %bb.e
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.112) #17
  br label %bytearray_take_bytes_impl.exit

bb.i:                                             ; preds = %.thread, %bb.h, %bb.d
  %.val.i11 = phi i64 [ %.val.i, %bb.h ], [ %.val.i, %bb.d ], [ %.val.i10, %.thread ] ; 3 uses
  %i.r = phi ptr [ %i.e, %bb.h ], [ %i.e, %bb.d ], [ %i.c, %.thread ] ; 2 uses
  %.051.i = phi i64 [ %spec.select.i, %bb.h ], [ %.val.i, %bb.d ], [ %.val.i10, %.thread ] ; 11 uses
  %i.s = icmp slt i64 %.051.i, 0
  %i.t = icmp sgt i64 %.051.i, %.val.i11
  %or.cond65.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond65.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !11
  %i.v = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.113, i64 noundef %.051.i, i64 noundef %.val.i11) #17 ; 0 uses
  br label %bytearray_take_bytes_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val66.i = load i64, ptr %i.w, align 8, !tbaa !14
  %i.x = icmp sgt i64 %.val66.i, 0
  br i1 %i.x, label %_canresize.exit.thread.i, label %_canresize.exit.i

_canresize.exit.thread.i:                         ; preds = %bb.k
  %i.y = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.6) #17
  br label %bytearray_take_bytes_impl.exit

_canresize.exit.i:                                ; preds = %bb.k
  %i.z = icmp eq i64 %.051.i, 0
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_canresize.exit.i
  %i.aa = tail call ptr @Py_GetConstant(i32 noundef 8) #17
  br label %bytearray_take_bytes_impl.exit

bb.m:                                             ; preds = %_canresize.exit.i
  %i.ab = sub nsw i64 %.val.i11, %.051.i          ; 5 uses
  %i.ac = icmp slt i64 %.051.i, %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 40        ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.af = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ae, i64 noundef %.051.i) #17 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bytearray_take_bytes_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.051.i
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !23
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !25
  br label %bytearray_take_bytes_impl.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %i.ae, i64 %.051.i
  %i.ak = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.aj, i64 noundef %i.ab) #17 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bytearray_take_bytes_impl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %.not64.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not64.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.am, i64 %.051.i, i1 false)
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !24
  store ptr %i.ap, ptr %i.ad, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.ar = tail call i32 @_PyBytes_Resize(ptr noundef %i.aq, i64 noundef %.051.i) #17
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.at, -1
  br i1 %.not.i.i, label %bb.u, label %bytearray_take_bytes_impl.exit

bb.u:                                             ; preds = %bb.t
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.ak, align 8, !tbaa !22
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.v, label %bytearray_take_bytes_impl.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #17
  br label %bytearray_take_bytes_impl.exit

bb.w:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !21
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !21
  %i.ax = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  store ptr %i.ax, ptr %i.ad, align 8, !tbaa !23
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !24
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !25
  %i.ay = getelementptr i8, ptr %0, i64 24
  store i64 %i.ab, ptr %i.ay, align 8, !tbaa !26
  br label %bytearray_take_bytes_impl.exit

bytearray_take_bytes_impl.exit:                   ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.p, %bb.o, %bb.n, %bb.l, %_canresize.exit.thread.i, %bb.j, %_PyIndex_Check.exit.thread.i, %bb.g, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ null, %bb.j ], [ %i.aa, %bb.l ], [ null, %_canresize.exit.thread.i ], [ null, %bb.g ], [ null, %_PyIndex_Check.exit.thread.i ], [ null, %bb.n ], [ %i.af, %bb.o ], [ %i.aw, %bb.w ], [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_title(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val10.i = load i64, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %i.b = icmp slt i64 %.val10.i, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str) #17, !inline_history !215
  br label %stringlib_title.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !215 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %stringlib_title.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.d, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !14
  %i.g = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val10.i) #17, !inline_history !215 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 56
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.i, label %bb.f, label %stringlib_title.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !22
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %stringlib_title.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #17, !inline_history !215
  br label %stringlib_title.exit

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  %i.n = getelementptr i8, ptr %i.d, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr i8, ptr %i.d, i64 32
  store ptr %i.m, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr i8, ptr %i.d, i64 16
  store i64 %.val10.i, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr i8, ptr %i.d, i64 24
  store i64 %.val10.i, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !23
  %.val9.i = load i64, ptr %i.a, align 8, !tbaa !25
  tail call void @_Py_bytes_title(ptr noundef %i.m, ptr noundef %.val.i, i64 noundef %.val9.i) #17, !inline_history !216
  br label %stringlib_title.exit

stringlib_title.exit:                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.d, %bb.h ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_translate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 138 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.b = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !25
  %i.d = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %2, -1
  %i.f = icmp ult i64 %i.e, 2
  %i.g = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.g, %i.f
  br i1 %or.cond5, label %.thread31, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.h = phi i64 [ %i.d, %.thread ], [ %2, %bb.b ]
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytearray_translate._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #17 ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.ah, label %.thread31

.thread31:                                        ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.k = phi i64 [ %i.h, %bb.c ], [ %2, %bb.b ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !11   ; 3 uses
  %.not28 = icmp eq i64 %i.k, 1
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread31
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %.thread31, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ null, %.thread31 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.o = icmp eq ptr %i.l, @_Py_NoneStruct
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #17, !inline_history !217
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bytearray_translate_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_0
