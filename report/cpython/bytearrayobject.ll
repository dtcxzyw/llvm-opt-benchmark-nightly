inline.NumInlined: 605
inline.NumDeleted: 134
begin_hunk_0_@bytearray_pop:bb.a
_canresize.exit.i:                                ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 40
  %.val28.i = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr i8, ptr %.val28.i, i64 %.02130.i ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = getelementptr i8, ptr %i.z, i64 1
  %i.ac = sub nsw i64 %.val26.i3337, %.02130.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.ac, i1 false)
  %i.ad = add nsw i64 %.val26.i3337, -1
  %i.ae = tail call fastcc i32 @bytearray_resize_lock_held(ptr noundef nonnull %0, i64 noundef %i.ad)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bytearray_pop_impl.exit, label %bb.l

bb.l:                                             ; preds = %_canresize.exit.i
  %i.ag = zext i8 %i.aa to i64
  %i.ah = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), i64 %i.ag
  br label %bytearray_pop_impl.exit

bytearray_pop_impl.exit:                          ; preds = %bb.l, %_canresize.exit.i, %_canresize.exit.thread.i, %bb.j, %bb.h, %Py_DECREF.exit.thread, %bb.b
  %.018 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.j ], [ null, %_canresize.exit.thread.i ], [ %i.ah, %bb.l ], [ null, %_canresize.exit.i ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_remove(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call i64 @PyLong_AsLongAndOverflow(ptr noundef %1, ptr noundef nonnull %i.a) #17 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @PyErr_Occurred() #17
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.thread.i, label %_getbytevalue.exit.thread

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i64 %i.b, 255
  br i1 %or.cond.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.10) #17
  br label %_getbytevalue.exit.thread

_getbytevalue.exit.thread:                        ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bytearray_remove_impl.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !25 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val17.i = load ptr, ptr %i.g, align 8, !tbaa !23 ; 6 uses
  %i.h = trunc nuw i64 %i.b to i8
  %i.i = getelementptr i8, ptr %.val17.i, i64 %.val.i ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 15
  br i1 %i.j, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %i.k = icmp ult ptr %.val17.i, %i.i
  br i1 %i.k, label %.lr.ph.i.i, label %stringlib_find_char.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = trunc nuw nsw i64 %i.b to i32
  %sext.i = shl nuw i32 %i.l, 24
  %i.m = ashr exact i32 %sext.i, 24
  %i.n = call ptr @memchr(ptr noundef %.val17.i, i32 noundef %i.m, i64 noundef %.val.i) #18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %stringlib_find_char.exit.thread.i, label %stringlib_find_char.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.f
  %.01721.i.i = phi ptr [ %i.q, %bb.f ], [ %.val17.i, %.preheader.i.i ] ; 3 uses
  %i.o = load i8, ptr %.01721.i.i, align 1, !tbaa !22
  %i.p = icmp eq i8 %i.o, %i.h
  br i1 %i.p, label %stringlib_find_char.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr i8, ptr %.01721.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %exitcond.not.i.i, label %stringlib_find_char.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !130

stringlib_find_char.exit.i:                       ; preds = %.lr.ph.i.i, %bb.e
  %.sink29.i = phi ptr [ %i.n, %bb.e ], [ %.01721.i.i, %.lr.ph.i.i ]
  %i.r = ptrtoint ptr %.sink29.i to i64
  %i.s = ptrtoint ptr %.val17.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %stringlib_find_char.exit.thread.i, label %bb.g

stringlib_find_char.exit.thread.i:                ; preds = %bb.f, %stringlib_find_char.exit.i, %bb.e, %.preheader.i.i
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.106) #17
  br label %bytearray_remove_impl.exit

bb.g:                                             ; preds = %stringlib_find_char.exit.i
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val16.i = load i64, ptr %i.w, align 8, !tbaa !14
  %i.x = icmp sgt i64 %.val16.i, 0
  br i1 %i.x, label %_canresize.exit.thread.i, label %_canresize.exit.i

_canresize.exit.thread.i:                         ; preds = %bb.g
  %i.y = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.6) #17
  br label %bytearray_remove_impl.exit

_canresize.exit.i:                                ; preds = %bb.g
  %i.z = getelementptr i8, ptr %.val17.i, i64 %i.t ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  %i.ab = sub i64 %.val.i, %i.t
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  %i.ac = add i64 %.val.i, -1
  %i.ad = call fastcc i32 @bytearray_resize_lock_held(ptr noundef nonnull %0, i64 noundef %i.ac)
  %i.ae = icmp slt i32 %i.ad, 0
  %._Py_NoneStruct.i = select i1 %i.ae, ptr null, ptr @_Py_NoneStruct
  br label %bytearray_remove_impl.exit

bytearray_remove_impl.exit:                       ; preds = %_canresize.exit.i, %_canresize.exit.thread.i, %stringlib_find_char.exit.thread.i, %_getbytevalue.exit.thread
  %.0 = phi ptr [ null, %_getbytevalue.exit.thread ], [ null, %stringlib_find_char.exit.thread.i ], [ %._Py_NoneStruct.i, %_canresize.exit.i ], [ null, %_canresize.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_replace(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.a = and i64 %2, -2
  %or.cond = icmp eq i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.54, i64 noundef %2, i64 noundef 2, i64 noundef 3) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bytearray_replace_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 0) #17
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.d, label %bytearray_replace_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = call i32 @PyObject_GetBuffer(ptr noundef %i.f, ptr noundef nonnull %4, i32 noundef 0) #17
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %bb.e, label %bytearray_replace_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.h = icmp slt i64 %2, 3
  br i1 %i.h, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = call ptr @_PyNumber_Index(ptr noundef %i.j) #17 ; 5 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.k) #17 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.k, align 8, !tbaa !22
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.p = icmp eq i64 %i.l, -1
  br i1 %i.p, label %Py_DECREF.exit.thread, label %.thread

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.q = call ptr @PyErr_Occurred() #17
  %.not25 = icmp eq ptr %i.q, null
  br i1 %.not25, label %.thread, label %bytearray_replace_impl.exit

.thread:                                          ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.e
  %.1 = phi i64 [ -1, %bb.e ], [ %i.l, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !38    ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val29 = load i64, ptr %i.r, align 8, !tbaa !27 ; 18 uses
  %.val30 = load ptr, ptr %4, align 8, !tbaa !38  ; 15 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val31 = load i64, ptr %i.s, align 8, !tbaa !27 ; 25 uses
  %i.t = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !25 ; 64 uses
  %i.u = icmp slt i64 %.val.i.i, %.val29
  br i1 %i.u, label %bb.j, label %bb.s

bb.j:                                             ; preds = %.thread
  %i.v = getelementptr i8, ptr %0, i64 40
  %.val56.i.i = load ptr, ptr %i.v, align 8, !tbaa !23 ; 2 uses
  %i.w = icmp slt i64 %.val.i.i, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str) #17, !inline_history !131
  br label %bytearray_replace_impl.exit

bb.l:                                             ; preds = %bb.j
  %i.y = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !131 ; 12 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bytearray_replace_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %i.y, i64 48
  store i64 0, ptr %i.aa, align 8, !tbaa !14
  %i.ab = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !131 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.y, i64 56
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !21
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !22  ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bytearray_replace_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.y, align 8, !tbaa !22
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %bytearray_replace_impl.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #17, !inline_history !131
  br label %bytearray_replace_impl.exit

bb.q:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %i.ab, i64 32     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr i8, ptr %i.y, i64 32
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr i8, ptr %i.y, i64 16
  store i64 %.val.i.i, ptr %i.ak, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %i.y, i64 24
  store i64 %.val.i.i, ptr %i.al, align 8, !tbaa !26
  %i.am = icmp ne ptr %.val56.i.i, null
  %i.an = icmp ne i64 %.val.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i.i, label %bb.r, label %bytearray_replace_impl.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull readonly align 1 %.val56.i.i, i64 %.val.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.s:                                             ; preds = %.thread
  %i.ao = icmp slt i64 %.1, 0
  br i1 %i.ao, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = icmp eq i64 %.1, 0
  br i1 %i.ap, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr i8, ptr %0, i64 40
  %.val54.i.i = load ptr, ptr %i.aq, align 8, !tbaa !23 ; 2 uses
  %i.ar = icmp slt i64 %.val.i.i, 0
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str) #17, !inline_history !131
  br label %bytearray_replace_impl.exit

bb.w:                                             ; preds = %bb.u
  %i.at = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !131 ; 12 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bytearray_replace_impl.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr i8, ptr %i.at, i64 48
  store i64 0, ptr %i.av, align 8, !tbaa !14
  %i.aw = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !131 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 56
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !21
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.az = load i32, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i65.i.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i.i.i65.i.i, label %bb.z, label %bytearray_replace_impl.exit

bb.z:                                             ; preds = %bb.y
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.at, align 8, !tbaa !22
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %bytearray_replace_impl.exit

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #17, !inline_history !131
  br label %bytearray_replace_impl.exit

bb.ab:                                            ; preds = %bb.x
  %i.bc = getelementptr i8, ptr %i.aw, i64 32     ; 3 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 40
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !23
  %i.be = getelementptr i8, ptr %i.at, i64 32
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !24
  %i.bf = getelementptr i8, ptr %i.at, i64 16
  store i64 %.val.i.i, ptr %i.bf, align 8, !tbaa !25
  %i.bg = getelementptr i8, ptr %i.at, i64 24
  store i64 %.val.i.i, ptr %i.bg, align 8, !tbaa !26
  %i.bh = icmp ne ptr %.val54.i.i, null
  %i.bi = icmp ne i64 %.val.i.i, 0
  %or.cond.i.i63.i.i = and i1 %i.bi, %i.bh
  br i1 %or.cond.i.i63.i.i, label %bb.ac, label %bytearray_replace_impl.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull readonly align 1 %.val54.i.i, i64 %.val.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.ad:                                            ; preds = %bb.t, %bb.s
  %.0.i.i = phi i64 [ %.1, %bb.t ], [ 9223372036854775807, %bb.s ] ; 14 uses
  %i.bj = icmp eq i64 %.val29, 0
  %i.bk = icmp eq i64 %.val31, 0                  ; 2 uses
  br i1 %i.bj, label %bb.ae, label %bb.ay

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bk, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.bl = getelementptr i8, ptr %0, i64 40
  %.val52.i.i = load ptr, ptr %i.bl, align 8, !tbaa !23 ; 2 uses
  %i.bm = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !131 ; 12 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bytearray_replace_impl.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = getelementptr i8, ptr %i.bm, i64 48
  store i64 0, ptr %i.bo, align 8, !tbaa !14
  %i.bp = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !131 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bm, i64 56
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !21
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.bs = load i32, ptr %i.bm, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i69.i.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i.i.i69.i.i, label %bb.ai, label %bytearray_replace_impl.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.bm, align 8, !tbaa !22
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.aj, label %bytearray_replace_impl.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #17, !inline_history !131
  br label %bytearray_replace_impl.exit

bb.ak:                                            ; preds = %bb.ag
  %i.bv = getelementptr i8, ptr %i.bp, i64 32     ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bm, i64 40
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !23
  %i.bx = getelementptr i8, ptr %i.bm, i64 32
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !24
  %i.by = getelementptr i8, ptr %i.bm, i64 16
  store i64 %.val.i.i, ptr %i.by, align 8, !tbaa !25
  %i.bz = getelementptr i8, ptr %i.bm, i64 24
  store i64 %.val.i.i, ptr %i.bz, align 8, !tbaa !26
  %i.ca = icmp ne ptr %.val52.i.i, null
  %i.cb = icmp ne i64 %.val.i.i, 0
  %or.cond.i.i67.i.i = and i1 %i.cb, %i.ca
  br i1 %or.cond.i.i67.i.i, label %bb.al, label %bytearray_replace_impl.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull readonly align 1 %.val52.i.i, i64 %.val.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.am:                                            ; preds = %bb.ae
  %.not.i.i.i = icmp sgt i64 %.0.i.i, %.val.i.i
  %i.cc = add nsw i64 %.val.i.i, 1
  %.052.i.i.i = select i1 %.not.i.i.i, i64 %i.cc, i64 %.0.i.i ; 8 uses
  %i.cd = sub i64 9223372036854775807, %.val.i.i
  %i.ce = sdiv i64 %i.cd, %.052.i.i.i
  %i.cf = icmp sgt i64 %.val31, %i.ce
  br i1 %i.cf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cg = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.107) #17, !inline_history !132
end_hunk_0
begin_hunk_1_@bytearray_replace:bb.a
  %.05375.i.i.i = phi ptr [ %.val64.i.i.i, %.lr.ph78.i.i.i.preheader.new ], [ %i.dh, %.lr.ph78.i.i.i ] ; 3 uses
  %niter245 = phi i64 [ 0, %.lr.ph78.i.i.i.preheader.new ], [ %niter245.next.1, %.lr.ph78.i.i.i ]
  %i.de = getelementptr i8, ptr %.05375.i.i.i, i64 1
  %i.df = load i8, ptr %.05375.i.i.i, align 1, !tbaa !22
  %i.dg = getelementptr i8, ptr %.05677.i.i.i, i64 1 ; 2 uses
  store i8 %i.df, ptr %.05677.i.i.i, align 1, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dg, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val30, i64 range(i64 1, 0) %.val31, i1 false)
  %.056.i.i.i = getelementptr i8, ptr %i.dg, i64 %.val31 ; 2 uses
  %i.dh = getelementptr i8, ptr %.05375.i.i.i, i64 2 ; 3 uses
  %i.di = load i8, ptr %i.de, align 1, !tbaa !22
  %i.dj = getelementptr i8, ptr %.056.i.i.i, i64 1 ; 2 uses
  store i8 %i.di, ptr %.056.i.i.i, align 1, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dj, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val30, i64 range(i64 1, 0) %.val31, i1 false)
  %.056.i.i.i.1 = getelementptr i8, ptr %i.dj, i64 %.val31 ; 3 uses
  %niter245.next.1 = add i64 %niter245, 2         ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph78.i.i.i, !llvm.loop !134

bb.ax:                                            ; preds = %bb.av
  %i.dk = load i8, ptr %.val30, align 1, !tbaa !22
  store i8 %i.dk, ptr %i.cu, align 1, !tbaa !22
  %i.dl = add i64 %.052.i.i.i, -1                 ; 4 uses
  %.15768.i.i.i = getelementptr i8, ptr %i.cu, i64 %.val31 ; 3 uses
  %i.dm = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.dm, label %.lr.ph.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ax
  %i.dn = add nsw i64 %.052.i.i.i, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.do = icmp ult i64 %i.dn, 3
  br i1 %i.do, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.15771.i.i.i = phi ptr [ %.15768.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %.157.i.i.i.3, %.lr.ph.i.i.i ] ; 2 uses
  %.15469.i.i.i = phi ptr [ %.val64.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.eb, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dp = getelementptr i8, ptr %.15469.i.i.i, i64 1
  %i.dq = load i8, ptr %.15469.i.i.i, align 1, !tbaa !22
  %i.dr = getelementptr i8, ptr %.15771.i.i.i, i64 1 ; 2 uses
  store i8 %i.dq, ptr %.15771.i.i.i, align 1, !tbaa !22
  %i.ds = load i8, ptr %.val30, align 1, !tbaa !22
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !22
  %.157.i.i.i = getelementptr i8, ptr %i.dr, i64 %.val31 ; 2 uses
  %i.dt = getelementptr i8, ptr %.15469.i.i.i, i64 2
  %i.du = load i8, ptr %i.dp, align 1, !tbaa !22
  %i.dv = getelementptr i8, ptr %.157.i.i.i, i64 1 ; 2 uses
  store i8 %i.du, ptr %.157.i.i.i, align 1, !tbaa !22
  %i.dw = load i8, ptr %.val30, align 1, !tbaa !22
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !22
  %.157.i.i.i.1 = getelementptr i8, ptr %i.dv, i64 %.val31 ; 2 uses
  %i.dx = getelementptr i8, ptr %.15469.i.i.i, i64 3
  %i.dy = load i8, ptr %i.dt, align 1, !tbaa !22
  %i.dz = getelementptr i8, ptr %.157.i.i.i.1, i64 1 ; 2 uses
  store i8 %i.dy, ptr %.157.i.i.i.1, align 1, !tbaa !22
  %i.ea = load i8, ptr %.val30, align 1, !tbaa !22
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !22
  %.157.i.i.i.2 = getelementptr i8, ptr %i.dz, i64 %.val31 ; 2 uses
  %i.eb = getelementptr i8, ptr %.15469.i.i.i, i64 4 ; 3 uses
  %i.ec = load i8, ptr %i.dx, align 1, !tbaa !22
  %i.ed = getelementptr i8, ptr %.157.i.i.i.2, i64 1 ; 2 uses
  store i8 %i.ec, ptr %.157.i.i.i.2, align 1, !tbaa !22
  %i.ee = load i8, ptr %.val30, align 1, !tbaa !22
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !22
  %.157.i.i.i.3 = getelementptr i8, ptr %i.ed, i64 %.val31 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.i.i.loopexit208.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !135

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph78.i.i.i
  %lcmp.mod240.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod240.not, label %.loopexit.i.i.i, label %.lr.ph78.i.i.i.epil.preheader

.lr.ph78.i.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph78.i.i.i.preheader
  %.05677.i.i.i.epil.init = phi ptr [ %.05674.i.i.i, %.lr.ph78.i.i.i.preheader ], [ %.056.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.05375.i.i.i.epil.init = phi ptr [ %.val64.i.i.i, %.lr.ph78.i.i.i.preheader ], [ %i.dh, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i64 %i.db to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.ef = getelementptr i8, ptr %.05375.i.i.i.epil.init, i64 1
  %i.eg = load i8, ptr %.05375.i.i.i.epil.init, align 1, !tbaa !22
  %i.eh = getelementptr i8, ptr %.05677.i.i.i.epil.init, i64 1 ; 2 uses
  store i8 %i.eg, ptr %.05677.i.i.i.epil.init, align 1, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eh, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val30, i64 range(i64 1, 0) %.val31, i1 false)
  %.056.i.i.i.epil = getelementptr i8, ptr %i.eh, i64 %.val31
  br label %.loopexit.i.i.i

.loopexit.i.i.i.loopexit208.unr-lcssa:            ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.loopexit208.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.15771.i.i.i.epil.init = phi ptr [ %.15768.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.157.i.i.i.3, %.loopexit.i.i.i.loopexit208.unr-lcssa ]
  %.15469.i.i.i.epil.init = phi ptr [ %.val64.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.loopexit.i.i.i.loopexit208.unr-lcssa ]
  %lcmp.mod237 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod237)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.15771.i.i.i.epil = phi ptr [ %.157.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ %.15771.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.15469.i.i.i.epil = phi ptr [ %i.ei, %.lr.ph.i.i.i.epil ], [ %.15469.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ei = getelementptr i8, ptr %.15469.i.i.i.epil, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.15469.i.i.i.epil, align 1, !tbaa !22
  %i.ek = getelementptr i8, ptr %.15771.i.i.i.epil, i64 1 ; 2 uses
  store i8 %i.ej, ptr %.15771.i.i.i.epil, align 1, !tbaa !22
  %i.el = load i8, ptr %.val30, align 1, !tbaa !22
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !22
  %.157.i.i.i.epil = getelementptr i8, ptr %i.ek, i64 %.val31 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !136

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit208.unr-lcssa, %.lr.ph.i.i.i.epil, %.lr.ph78.i.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.ax, %bb.aw
  %.258.i.i.i = phi ptr [ %.056.i.i.i.epil, %.lr.ph78.i.i.i.epil.preheader ], [ %.05674.i.i.i, %bb.aw ], [ %.15768.i.i.i, %bb.ax ], [ %.056.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %.157.i.i.i.3, %.loopexit.i.i.i.loopexit208.unr-lcssa ], [ %.157.i.i.i.epil, %.lr.ph.i.i.i.epil ]
  %.255.i.i.i = phi ptr [ %i.ef, %.lr.ph78.i.i.i.epil.preheader ], [ %.val64.i.i.i, %bb.aw ], [ %.val64.i.i.i, %bb.ax ], [ %i.dh, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.eb, %.loopexit.i.i.i.loopexit208.unr-lcssa ], [ %i.ei, %.lr.ph.i.i.i.epil ]
  %.2.i.i.i = phi i64 [ %i.db, %.lr.ph78.i.i.i.epil.preheader ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ %i.db, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph.i.i.i.epil ], [ %i.dl, %.loopexit.i.i.i.loopexit208.unr-lcssa ]
  %i.em = sub i64 %.val.i.i, %.2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.258.i.i.i, ptr align 1 %.255.i.i.i, i64 %i.em, i1 false)
  br label %bytearray_replace_impl.exit

bb.ay:                                            ; preds = %bb.ad
  br i1 %i.bk, label %bb.az, label %bb.ch

bb.az:                                            ; preds = %bb.ay
  %i.en = icmp eq i64 %.val29, 1
  br i1 %i.en, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.eo = load i8, ptr %.val, align 1, !tbaa !22
  %i.ep = getelementptr i8, ptr %0, i64 40
  %.val58.i.i = load ptr, ptr %i.ep, align 8, !tbaa !23 ; 5 uses
  %i.eq = getelementptr i8, ptr %.val58.i.i, i64 %.val.i.i
  %i.er = sext i8 %i.eo to i32                    ; 3 uses
  %i.es = ptrtoint ptr %i.eq to i64               ; 3 uses
  %i.et = call ptr @memchr(ptr noundef %.val58.i.i, i32 noundef %i.er, i64 noundef %.val.i.i) #18, !inline_history !137 ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not16.i.i.i.i, label %countchar.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ba
  %i.eu = add nsw i64 %.0.i.i, -1                 ; 2 uses
  %exitcond.not.i.i.i.i202 = icmp eq i64 %i.eu, 0
  br i1 %exitcond.not.i.i.i.i202, label %.lr.ph.i.i.i.i._crit_edge, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i203 = phi i64 [ %i.ew, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.ev = phi ptr [ %i.fa, %.lr.ph.i.i.i.i ], [ %i.et, %.lr.ph.preheader.i.i.i.i ]
  %i.ew = add nuw nsw i64 %.017.i.i.i.i203, 1     ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ev, i64 1      ; 2 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.es, %i.ey
  %i.fa = call ptr @memchr(ptr noundef %i.ex, i32 noundef %i.er, i64 noundef %i.ez) #18, !inline_history !137 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %._crit_edge206, label %.lr.ph.i.i.i.i, !llvm.loop !138

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph204
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ew, %i.eu
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i.i.i._crit_edge, label %.lr.ph204, !llvm.loop !138

countchar.exit.i.i.i:                             ; preds = %bb.ba
  %i.fb = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !139 ; 12 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bytearray_replace_impl.exit, label %bb.bb

bb.bb:                                            ; preds = %countchar.exit.i.i.i
  %i.fd = getelementptr i8, ptr %i.fb, i64 48
  store i64 0, ptr %i.fd, align 8, !tbaa !14
  %i.fe = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !139 ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fb, i64 56
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !21
  %i.fg = icmp eq ptr %i.fe, null
  br i1 %i.fg, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.fh = load i32, ptr %i.fb, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.fh, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.bd, label %bytearray_replace_impl.exit

bb.bd:                                            ; preds = %bb.bc
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %i.fb, align 8, !tbaa !22
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.be, label %bytearray_replace_impl.exit

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %i.fb) #17, !inline_history !139
  br label %bytearray_replace_impl.exit

bb.bf:                                            ; preds = %bb.bb
  %i.fk = getelementptr i8, ptr %i.fe, i64 32     ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fb, i64 40
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !23
  %i.fm = getelementptr i8, ptr %i.fb, i64 32
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !24
  %i.fn = getelementptr i8, ptr %i.fb, i64 16
  store i64 %.val.i.i, ptr %i.fn, align 8, !tbaa !25
  %i.fo = getelementptr i8, ptr %i.fb, i64 24
  store i64 %.val.i.i, ptr %i.fo, align 8, !tbaa !26
  %.not143.i.i = icmp eq ptr %.val58.i.i, null
  br i1 %.not143.i.i, label %bytearray_replace_impl.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr nonnull readonly align 1 %.val58.i.i, i64 %.val.i.i, i1 false)
  br label %bytearray_replace_impl.exit

._crit_edge206:                                   ; preds = %.lr.ph204
  br label %.lr.ph.i.i.i.i._crit_edge, !llvm.loop !138

.lr.ph.i.i.i.i._crit_edge:                        ; preds = %.lr.ph.i.i.i.i, %._crit_edge206, %.lr.ph.preheader.i.i.i.i
  %.1.i.ph.i.i.i = phi i64 [ %.0.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.ew, %._crit_edge206 ], [ %.0.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.fp = sub i64 %.val.i.i, %.1.i.ph.i.i.i       ; 4 uses
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i._crit_edge
  %i.fr = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.fr, ptr noundef nonnull @.str) #17, !inline_history !140
  br label %bytearray_replace_impl.exit

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i._crit_edge
  %i.fs = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !140 ; 11 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bytearray_replace_impl.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fu = getelementptr i8, ptr %i.fs, i64 48
  store i64 0, ptr %i.fu, align 8, !tbaa !14
  %i.fv = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.fp) #17, !inline_history !140 ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fs, i64 56
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !21
  %i.fx = icmp eq ptr %i.fv, null
  br i1 %i.fx, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.fy = load i32, ptr %i.fs, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i73.i.i = icmp sgt i32 %i.fy, -1
  br i1 %.not.i.i.i73.i.i, label %bb.bl, label %bytearray_replace_impl.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.fs, align 8, !tbaa !22
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bm, label %bytearray_replace_impl.exit

bb.bm:                                            ; preds = %bb.bl
  call void @_Py_Dealloc(ptr noundef nonnull %i.fs) #17, !inline_history !140
  br label %bytearray_replace_impl.exit

bb.bn:                                            ; preds = %bb.bj
  %i.gb = getelementptr i8, ptr %i.fv, i64 32     ; 3 uses
  %i.gc = getelementptr i8, ptr %i.fs, i64 40
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !23
  %i.gd = getelementptr i8, ptr %i.fs, i64 32
  store ptr %i.gb, ptr %i.gd, align 8, !tbaa !24
  %i.ge = getelementptr i8, ptr %i.fs, i64 16
  store i64 %i.fp, ptr %i.ge, align 8, !tbaa !25
  %i.gf = getelementptr i8, ptr %i.fs, i64 24
  store i64 %i.fp, ptr %i.gf, align 8, !tbaa !26
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %.in.i.i.i = phi i64 [ %.1.i.ph.i.i.i, %bb.bn ], [ %i.gk, %bb.bp ] ; 2 uses
  %.0365.i.i.i = phi ptr [ %.val58.i.i, %bb.bn ], [ %i.go, %bb.bp ] ; 4 uses
  %.0374.i.i.i = phi ptr [ %i.gb, %bb.bn ], [ %i.gn, %bb.bp ] ; 3 uses
  %i.gg = ptrtoint ptr %.0365.i.i.i to i64        ; 2 uses
  %i.gh = sub i64 %i.es, %i.gg                    ; 2 uses
  %i.gi = call ptr @memchr(ptr noundef %.0365.i.i.i, i32 noundef %i.er, i64 noundef %i.gh) #18, !inline_history !137 ; 3 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %split.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gk = add nsw i64 %.in.i.i.i, -1
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gl, %i.gg                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0374.i.i.i, ptr align 1 %.0365.i.i.i, i64 %i.gm, i1 false)
  %i.gn = getelementptr i8, ptr %.0374.i.i.i, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gi, i64 1      ; 3 uses
  %i.gp = icmp sgt i64 %.in.i.i.i, 1
  br i1 %i.gp, label %bb.bo, label %._crit_edge.i.i.i, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %bb.bp
  %.pre.i.i.i = ptrtoint ptr %i.go to i64
  %.pre6.i.i.i = sub i64 %i.es, %.pre.i.i.i
  br label %split.i.i.i, !llvm.loop !141

split.i.i.i:                                      ; preds = %bb.bo, %._crit_edge.i.i.i
  %.pre-phi7.i.i.i = phi i64 [ %.pre6.i.i.i, %._crit_edge.i.i.i ], [ %i.gh, %bb.bo ]
  %.037.lcssa.i.i.i = phi ptr [ %i.gn, %._crit_edge.i.i.i ], [ %.0374.i.i.i, %bb.bo ]
  %.036.lcssa.i.i.i = phi ptr [ %i.go, %._crit_edge.i.i.i ], [ %.0365.i.i.i, %bb.bo ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.037.lcssa.i.i.i, ptr align 1 %.036.lcssa.i.i.i, i64 %.pre-phi7.i.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.bq:                                            ; preds = %bb.az
  %i.gq = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %.val47.i.i.i = load ptr, ptr %i.gq, align 8, !tbaa !23 ; 3 uses
  %i.gr = icmp slt i64 %.val.i.i, 0
  br i1 %i.gr, label %.thread.i.i.i, label %stringlib_count.exit.i.i.i

stringlib_count.exit.i.i.i:                       ; preds = %bb.bq
  %i.gs = call fastcc i64 @fastsearch(ptr noundef %.val47.i.i.i, i64 noundef %.val.i.i, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val29, i64 noundef range(i64 1, -9223372036854775808) %.0.i.i, i32 noundef 0), !inline_history !142 ; 2 uses
  %..i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gs, i64 0) ; 2 uses
  %i.gt = icmp slt i64 %i.gs, 1
  br i1 %i.gt, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %stringlib_count.exit.i.i.i
  %.val49.pr.i.i.i = load i64, ptr %i.t, align 8, !tbaa !25 ; 6 uses
  %.val50.i.i.i = load ptr, ptr %i.gq, align 8, !tbaa !23 ; 2 uses
  %i.gu = icmp slt i64 %.val49.pr.i.i.i, 0
  br i1 %i.gu, label %.thread.i.i.i, label %bb.bs

.thread.i.i.i:                                    ; preds = %bb.br, %bb.bq
  %i.gv = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.gv, ptr noundef nonnull @.str) #17, !inline_history !143
  br label %bytearray_replace_impl.exit

bb.bs:                                            ; preds = %bb.br
  %i.gw = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !143 ; 12 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bytearray_replace_impl.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gy = getelementptr i8, ptr %i.gw, i64 48
  store i64 0, ptr %i.gy, align 8, !tbaa !14
  %i.gz = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val49.pr.i.i.i) #17, !inline_history !143 ; 3 uses
  %i.ha = getelementptr i8, ptr %i.gw, i64 56
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !21
  %i.hb = icmp eq ptr %i.gz, null
  br i1 %i.hb, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hc = load i32, ptr %i.gw, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i80.i.i = icmp sgt i32 %i.hc, -1
  br i1 %.not.i.i.i.i80.i.i, label %bb.bv, label %bytearray_replace_impl.exit

bb.bv:                                            ; preds = %bb.bu
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hd, ptr %i.gw, align 8, !tbaa !22
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.bw, label %bytearray_replace_impl.exit

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.gw) #17, !inline_history !143
  br label %bytearray_replace_impl.exit

bb.bx:                                            ; preds = %bb.bt
  %i.hf = getelementptr i8, ptr %i.gz, i64 32     ; 3 uses
  %i.hg = getelementptr i8, ptr %i.gw, i64 40
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !23
  %i.hh = getelementptr i8, ptr %i.gw, i64 32
  store ptr %i.hf, ptr %i.hh, align 8, !tbaa !24
  %i.hi = getelementptr i8, ptr %i.gw, i64 16
  store i64 %.val49.pr.i.i.i, ptr %i.hi, align 8, !tbaa !25
  %i.hj = getelementptr i8, ptr %i.gw, i64 24
  store i64 %.val49.pr.i.i.i, ptr %i.hj, align 8, !tbaa !26
  %i.hk = icmp ne ptr %.val50.i.i.i, null
  %i.hl = icmp ne i64 %.val49.pr.i.i.i, 0
  %or.cond.i.i.i79.i.i = and i1 %i.hl, %i.hk
  br i1 %or.cond.i.i.i79.i.i, label %bb.by, label %bytearray_replace_impl.exit

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr nonnull readonly align 1 %.val50.i.i.i, i64 %.val49.pr.i.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.bz:                                            ; preds = %stringlib_count.exit.i.i.i
  %i.hm = mul i64 %..i.i.i.i, %.val29
  %i.hn = sub i64 %.val.i.i, %i.hm                ; 4 uses
  %i.ho = icmp slt i64 %i.hn, 0
  br i1 %i.ho, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hp = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.hp, ptr noundef nonnull @.str) #17, !inline_history !144
  br label %bytearray_replace_impl.exit

bb.cb:                                            ; preds = %bb.bz
  %i.hq = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !144 ; 11 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bytearray_replace_impl.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hs = getelementptr i8, ptr %i.hq, i64 48
  store i64 0, ptr %i.hs, align 8, !tbaa !14
  %i.ht = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.hn) #17, !inline_history !144 ; 3 uses
  %i.hu = getelementptr i8, ptr %i.hq, i64 56
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !21
  %i.hv = icmp eq ptr %i.ht, null
  br i1 %i.hv, label %bb.cd, label %.lr.ph.preheader.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.hw = load i32, ptr %i.hq, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i78.i.i = icmp sgt i32 %i.hw, -1
  br i1 %.not.i.i.i78.i.i, label %bb.ce, label %bytearray_replace_impl.exit

bb.ce:                                            ; preds = %bb.cd
  %i.hx = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.hq, align 8, !tbaa !22
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.cf, label %bytearray_replace_impl.exit

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.hq) #17, !inline_history !144
  br label %bytearray_replace_impl.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cc
  %i.hz = getelementptr i8, ptr %i.ht, i64 32     ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hq, i64 40
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !23
  %i.ib = getelementptr i8, ptr %i.hq, i64 32
  store ptr %i.hz, ptr %i.ib, align 8, !tbaa !24
  %i.ic = getelementptr i8, ptr %i.hq, i64 16
  store i64 %i.hn, ptr %i.ic, align 8, !tbaa !25
  %i.id = getelementptr i8, ptr %i.hq, i64 24
  store i64 %i.hn, ptr %i.id, align 8, !tbaa !26
  %i.ie = getelementptr i8, ptr %.val47.i.i.i, i64 %.val.i.i
  %i.if = ptrtoint ptr %i.ie to i64               ; 2 uses
  br label %.lr.ph.i74.i.i

.lr.ph.i74.i.i:                                   ; preds = %bb.cg, %.lr.ph.preheader.i.i.i
  %.in.i75.i.i = phi i64 [ %i.ik, %bb.cg ], [ %..i.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.04157.i.i.i = phi ptr [ %i.in, %bb.cg ], [ %.val47.i.i.i, %.lr.ph.preheader.i.i.i ] ; 5 uses
  %.04356.i.i.i = phi ptr [ %i.im, %bb.cg ], [ %i.hz, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ig = ptrtoint ptr %.04157.i.i.i to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = call fastcc i64 @fastsearch(ptr noundef %.04157.i.i.i, i64 noundef %i.ih, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val29, i64 noundef -1, i32 noundef 1), !inline_history !142 ; 4 uses
  %i.ij = icmp eq i64 %i.ii, -1
  br i1 %i.ij, label %._crit_edge.i76.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i74.i.i
  %i.ik = add nsw i64 %.in.i75.i.i, -1
  %i.il = getelementptr i8, ptr %.04157.i.i.i, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04356.i.i.i, ptr align 1 %.04157.i.i.i, i64 %i.ii, i1 false)
  %i.im = getelementptr i8, ptr %.04356.i.i.i, i64 %i.ii ; 2 uses
  %i.in = getelementptr i8, ptr %i.il, i64 %.val29 ; 3 uses
  %i.io = icmp sgt i64 %.in.i75.i.i, 1
  br i1 %i.io, label %.lr.ph.i74.i.i, label %.._crit_edge.i76_crit_edge.i.i, !llvm.loop !145

.._crit_edge.i76_crit_edge.i.i:                   ; preds = %bb.cg
  %.pre.i.i = ptrtoint ptr %i.in to i64
  %.pre159.i.i = sub i64 %i.if, %.pre.i.i
  br label %._crit_edge.i76.i.i, !llvm.loop !145

._crit_edge.i76.i.i:                              ; preds = %.lr.ph.i74.i.i, %.._crit_edge.i76_crit_edge.i.i
  %.pre-phi160.i.i = phi i64 [ %.pre159.i.i, %.._crit_edge.i76_crit_edge.i.i ], [ %i.ih, %.lr.ph.i74.i.i ]
  %.043.lcssa.ph.i.i.i = phi ptr [ %i.im, %.._crit_edge.i76_crit_edge.i.i ], [ %.04356.i.i.i, %.lr.ph.i74.i.i ]
  %.041.lcssa.ph.i.i.i = phi ptr [ %i.in, %.._crit_edge.i76_crit_edge.i.i ], [ %.04157.i.i.i, %.lr.ph.i74.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.043.lcssa.ph.i.i.i, ptr align 1 %.041.lcssa.ph.i.i.i, i64 %.pre-phi160.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.ch:                                            ; preds = %bb.ay
  %i.ip = icmp eq i64 %.val29, %.val31
  %i.iq = icmp eq i64 %.val29, 1                  ; 2 uses
  br i1 %i.ip, label %bb.ci, label %bb.ds

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.iq, label %bb.cj, label %bb.cz

bb.cj:                                            ; preds = %bb.ci
  %i.ir = load i8, ptr %.val, align 1, !tbaa !22
  %i.is = load i8, ptr %.val30, align 1, !tbaa !22 ; 2 uses
  %i.it = getelementptr i8, ptr %0, i64 40
  %.val60.i.i = load ptr, ptr %i.it, align 8, !tbaa !23 ; 5 uses
  %i.iu = sext i8 %i.ir to i32                    ; 2 uses
  %i.iv = call ptr @memchr(ptr noundef %.val60.i.i, i32 noundef %i.iu, i64 noundef %.val.i.i) #18, !inline_history !146 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  %i.ix = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !147 ; 24 uses
  %i.iy = icmp eq ptr %i.ix, null                 ; 2 uses
  br i1 %i.iw, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.iy, label %bytearray_replace_impl.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iz = getelementptr i8, ptr %i.ix, i64 48
  store i64 0, ptr %i.iz, align 8, !tbaa !14
  %i.ja = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !148 ; 3 uses
  %i.jb = getelementptr i8, ptr %i.ix, i64 56
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !21
  %i.jc = icmp eq ptr %i.ja, null
  br i1 %i.jc, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.jd = load i32, ptr %i.ix, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i86.i.i = icmp sgt i32 %i.jd, -1
  br i1 %.not.i.i.i.i86.i.i, label %bb.cn, label %bytearray_replace_impl.exit

bb.cn:                                            ; preds = %bb.cm
  %i.je = add nsw i32 %i.jd, -1                   ; 2 uses
  store i32 %i.je, ptr %i.ix, align 8, !tbaa !22
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.co, label %bytearray_replace_impl.exit

bb.co:                                            ; preds = %bb.cn
  call void @_Py_Dealloc(ptr noundef nonnull %i.ix) #17, !inline_history !148
  br label %bytearray_replace_impl.exit

bb.cp:                                            ; preds = %bb.cl
  %i.jg = getelementptr i8, ptr %i.ja, i64 32     ; 3 uses
  %i.jh = getelementptr i8, ptr %i.ix, i64 40
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !23
  %i.ji = getelementptr i8, ptr %i.ix, i64 32
  store ptr %i.jg, ptr %i.ji, align 8, !tbaa !24
  %i.jj = getelementptr i8, ptr %i.ix, i64 16
  store i64 %.val.i.i, ptr %i.jj, align 8, !tbaa !25
  %i.jk = getelementptr i8, ptr %i.ix, i64 24
  store i64 %.val.i.i, ptr %i.jk, align 8, !tbaa !26
  %.not142.i.i = icmp eq ptr %.val60.i.i, null
  br i1 %.not142.i.i, label %bytearray_replace_impl.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr nonnull readonly align 1 %.val60.i.i, i64 %.val.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.cr:                                            ; preds = %bb.cj
  br i1 %i.iy, label %bytearray_replace_impl.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jl = getelementptr i8, ptr %i.ix, i64 48
  store i64 0, ptr %i.jl, align 8, !tbaa !14
  %i.jm = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !149 ; 3 uses
  %i.jn = getelementptr i8, ptr %i.ix, i64 56
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !21
  %i.jo = icmp eq ptr %i.jm, null
  br i1 %i.jo, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.jp = load i32, ptr %i.ix, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i84.i.i = icmp sgt i32 %i.jp, -1
  br i1 %.not.i.i.i84.i.i, label %bb.cu, label %bytearray_replace_impl.exit

bb.cu:                                            ; preds = %bb.ct
  %i.jq = add nsw i32 %i.jp, -1                   ; 2 uses
  store i32 %i.jq, ptr %i.ix, align 8, !tbaa !22
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.cv, label %bytearray_replace_impl.exit

bb.cv:                                            ; preds = %bb.cu
  call void @_Py_Dealloc(ptr noundef nonnull %i.ix) #17, !inline_history !149
  br label %bytearray_replace_impl.exit

bb.cw:                                            ; preds = %bb.cs
  %i.js = getelementptr i8, ptr %i.jm, i64 32     ; 5 uses
  %i.jt = getelementptr i8, ptr %i.ix, i64 40
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !23
  %i.ju = getelementptr i8, ptr %i.ix, i64 32
  store ptr %i.js, ptr %i.ju, align 8, !tbaa !24
  %i.jv = getelementptr i8, ptr %i.ix, i64 16
  store i64 %.val.i.i, ptr %i.jv, align 8, !tbaa !25
  %i.jw = getelementptr i8, ptr %i.ix, i64 24
  store i64 %.val.i.i, ptr %i.jw, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.js, ptr align 1 %.val60.i.i, i64 %.val.i.i, i1 false)
  %i.jx = ptrtoint ptr %i.iv to i64
  %i.jy = ptrtoint ptr %.val60.i.i to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = getelementptr i8, ptr %i.js, i64 %i.jz  ; 2 uses
  store i8 %i.is, ptr %i.ka, align 1, !tbaa !22
  %i.kb = icmp samesign ugt i64 %.0.i.i, 1
  br i1 %i.kb, label %.lr.ph.i82.i.i, label %bytearray_replace_impl.exit

.lr.ph.i82.i.i:                                   ; preds = %bb.cw
  %i.kc = getelementptr i8, ptr %i.js, i64 %.val.i.i
  %i.kd = ptrtoint ptr %i.kc to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cy, %.lr.ph.i82.i.i
  %.in.i83.i.i = phi i64 [ %.0.i.i, %.lr.ph.i82.i.i ], [ %i.ki, %bb.cy ] ; 2 uses
  %.pn2.i.i.i = phi ptr [ %i.ka, %.lr.ph.i82.i.i ], [ %i.kg, %bb.cy ]
  %.032.i.i.i = getelementptr i8, ptr %.pn2.i.i.i, i64 1 ; 2 uses
  %i.ke = ptrtoint ptr %.032.i.i.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = call ptr @memchr(ptr noundef %.032.i.i.i, i32 noundef %i.iu, i64 noundef %i.kf) #18, !inline_history !146 ; 3 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bytearray_replace_impl.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ki = add nsw i64 %.in.i83.i.i, -1
  store i8 %i.is, ptr %i.kg, align 1, !tbaa !22
  %i.kj = icmp sgt i64 %.in.i83.i.i, 2
  br i1 %i.kj, label %bb.cx, label %bytearray_replace_impl.exit, !llvm.loop !150

bb.cz:                                            ; preds = %bb.ci
  %i.kk = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %.val44.i.i.i = load ptr, ptr %i.kk, align 8, !tbaa !23 ; 2 uses
  %i.kl = call fastcc i64 @fastsearch(ptr noundef %.val44.i.i.i, i64 noundef %.val.i.i, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val29, i64 noundef -1, i32 noundef 1), !inline_history !151 ; 2 uses
  %i.km = icmp eq i64 %i.kl, -1
  br i1 %i.km, label %bb.da, label %bb.dj

bb.da:                                            ; preds = %bb.cz
  %.val46.i.i.i = load i64, ptr %i.t, align 8, !tbaa !25 ; 6 uses
  %.val47.i91.i.i = load ptr, ptr %i.kk, align 8, !tbaa !23 ; 2 uses
  %i.kn = icmp slt i64 %.val46.i.i.i, 0
  br i1 %i.kn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ko = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ko, ptr noundef nonnull @.str) #17, !inline_history !152
  br label %bytearray_replace_impl.exit

bb.dc:                                            ; preds = %bb.da
  %i.kp = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !152 ; 12 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bytearray_replace_impl.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kr = getelementptr i8, ptr %i.kp, i64 48
  store i64 0, ptr %i.kr, align 8, !tbaa !14
  %i.ks = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val46.i.i.i) #17, !inline_history !152 ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kp, i64 56
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !21
  %i.ku = icmp eq ptr %i.ks, null
  br i1 %i.ku, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.kv = load i32, ptr %i.kp, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i93.i.i = icmp sgt i32 %i.kv, -1
  br i1 %.not.i.i.i.i93.i.i, label %bb.df, label %bytearray_replace_impl.exit

bb.df:                                            ; preds = %bb.de
  %i.kw = add nsw i32 %i.kv, -1                   ; 2 uses
  store i32 %i.kw, ptr %i.kp, align 8, !tbaa !22
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.dg, label %bytearray_replace_impl.exit

bb.dg:                                            ; preds = %bb.df
  call void @_Py_Dealloc(ptr noundef nonnull %i.kp) #17, !inline_history !152
  br label %bytearray_replace_impl.exit

bb.dh:                                            ; preds = %bb.dd
  %i.ky = getelementptr i8, ptr %i.ks, i64 32     ; 3 uses
  %i.kz = getelementptr i8, ptr %i.kp, i64 40
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !23
  %i.la = getelementptr i8, ptr %i.kp, i64 32
  store ptr %i.ky, ptr %i.la, align 8, !tbaa !24
  %i.lb = getelementptr i8, ptr %i.kp, i64 16
  store i64 %.val46.i.i.i, ptr %i.lb, align 8, !tbaa !25
  %i.lc = getelementptr i8, ptr %i.kp, i64 24
  store i64 %.val46.i.i.i, ptr %i.lc, align 8, !tbaa !26
  %i.ld = icmp ne ptr %.val47.i91.i.i, null
  %i.le = icmp ne i64 %.val46.i.i.i, 0
  %or.cond.i.i.i92.i.i = and i1 %i.le, %i.ld
  br i1 %or.cond.i.i.i92.i.i, label %bb.di, label %bytearray_replace_impl.exit

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr nonnull readonly align 1 %.val47.i91.i.i, i64 %.val46.i.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.dj:                                            ; preds = %bb.cz
  %i.lf = icmp slt i64 %.val.i.i, 0
  br i1 %i.lf, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lg = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.lg, ptr noundef nonnull @.str) #17, !inline_history !153
  br label %bytearray_replace_impl.exit

bb.dl:                                            ; preds = %bb.dj
  %i.lh = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !153 ; 13 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bytearray_replace_impl.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lj = getelementptr i8, ptr %i.lh, i64 48
  store i64 0, ptr %i.lj, align 8, !tbaa !14
  %i.lk = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !153 ; 3 uses
  %i.ll = getelementptr i8, ptr %i.lh, i64 56
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !21
  %i.lm = icmp eq ptr %i.lk, null
  br i1 %i.lm, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.ln = load i32, ptr %i.lh, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i90.i.i = icmp sgt i32 %i.ln, -1
  br i1 %.not.i.i.i90.i.i, label %bb.do, label %bytearray_replace_impl.exit

bb.do:                                            ; preds = %bb.dn
  %i.lo = add nsw i32 %i.ln, -1                   ; 2 uses
  store i32 %i.lo, ptr %i.lh, align 8, !tbaa !22
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.dp, label %bytearray_replace_impl.exit

bb.dp:                                            ; preds = %bb.do
  call void @_Py_Dealloc(ptr noundef nonnull %i.lh) #17, !inline_history !153
  br label %bytearray_replace_impl.exit

bb.dq:                                            ; preds = %bb.dm
  %i.lq = getelementptr i8, ptr %i.lk, i64 32     ; 5 uses
  %i.lr = getelementptr i8, ptr %i.lh, i64 40
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !23
  %i.ls = getelementptr i8, ptr %i.lh, i64 32
  store ptr %i.lq, ptr %i.ls, align 8, !tbaa !24
  %i.lt = getelementptr i8, ptr %i.lh, i64 16
  store i64 %.val.i.i, ptr %i.lt, align 8, !tbaa !25
  %i.lu = getelementptr i8, ptr %i.lh, i64 24
  store i64 %.val.i.i, ptr %i.lu, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr align 1 %.val44.i.i.i, i64 %.val.i.i, i1 false)
  %i.lv = getelementptr i8, ptr %i.lq, i64 %i.kl  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lv, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val30, i64 range(i64 2, 0) %.val29, i1 false)
  %i.lw = getelementptr i8, ptr %i.lq, i64 %.val.i.i
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = icmp samesign ugt i64 %.0.i.i, 1
  br i1 %i.ly, label %.lr.ph.i88.i.i, label %bytearray_replace_impl.exit

.lr.ph.i88.i.i:                                   ; preds = %bb.dq, %bb.dr
  %.in.i89.i.i = phi i64 [ %i.md, %bb.dr ], [ %.0.i.i, %bb.dq ] ; 2 uses
  %.pn.i.i.i = phi ptr [ %i.me, %bb.dr ], [ %i.lv, %bb.dq ]
  %.03950.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i64 %.val29 ; 3 uses
  %i.lz = ptrtoint ptr %.03950.i.i.i to i64
  %i.ma = sub i64 %i.lx, %i.lz
  %i.mb = call fastcc i64 @fastsearch(ptr noundef %.03950.i.i.i, i64 noundef %i.ma, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val29, i64 noundef -1, i32 noundef 1), !inline_history !151 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, -1
  br i1 %i.mc, label %bytearray_replace_impl.exit, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i88.i.i
  %i.md = add nsw i64 %.in.i89.i.i, -1
  %i.me = getelementptr i8, ptr %.03950.i.i.i, i64 %i.mb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.me, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val30, i64 range(i64 2, 0) %.val29, i1 false)
  %i.mf = icmp sgt i64 %.in.i89.i.i, 2
  br i1 %i.mf, label %.lr.ph.i88.i.i, label %bytearray_replace_impl.exit, !llvm.loop !154

bb.ds:                                            ; preds = %bb.ch
  br i1 %i.iq, label %bb.dt, label %bb.en

bb.dt:                                            ; preds = %bb.ds
  %i.mg = load i8, ptr %.val, align 1, !tbaa !22
  %i.mh = getelementptr i8, ptr %0, i64 40
  %.val62.i.i = load ptr, ptr %i.mh, align 8, !tbaa !23 ; 5 uses
  %i.mi = getelementptr i8, ptr %.val62.i.i, i64 %.val.i.i
  %i.mj = sext i8 %i.mg to i32                    ; 3 uses
  %i.mk = ptrtoint ptr %i.mi to i64               ; 3 uses
  %i.ml = call ptr @memchr(ptr noundef %.val62.i.i, i32 noundef %i.mj, i64 noundef %.val.i.i) #18, !inline_history !155 ; 2 uses
  %.not16.i.i94.i.i = icmp eq ptr %i.ml, null
  br i1 %.not16.i.i94.i.i, label %countchar.exit.i109.i.i, label %.lr.ph.preheader.i.i95.i.i

.lr.ph.preheader.i.i95.i.i:                       ; preds = %bb.dt
  %i.mm = add nsw i64 %.0.i.i, -1                 ; 2 uses
  %exitcond.not.i.i98.i.i199 = icmp eq i64 %i.mm, 0
  br i1 %exitcond.not.i.i98.i.i199, label %.lr.ph.i.i96.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i95.i.i, %.lr.ph.i.i96.i.i
  %.017.i.i97.i.i200 = phi i64 [ %i.mo, %.lr.ph.i.i96.i.i ], [ 0, %.lr.ph.preheader.i.i95.i.i ]
  %i.mn = phi ptr [ %i.ms, %.lr.ph.i.i96.i.i ], [ %i.ml, %.lr.ph.preheader.i.i95.i.i ]
  %i.mo = add nuw nsw i64 %.017.i.i97.i.i200, 1   ; 3 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 1      ; 2 uses
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = sub i64 %i.mk, %i.mq
  %i.ms = call ptr @memchr(ptr noundef %i.mp, i32 noundef %i.mj, i64 noundef %i.mr) #18, !inline_history !155 ; 2 uses
  %.not.i.i99.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i99.i.i, label %._crit_edge, label %.lr.ph.i.i96.i.i, !llvm.loop !138

.lr.ph.i.i96.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i98.i.i = icmp eq i64 %i.mo, %i.mm
  br i1 %exitcond.not.i.i98.i.i, label %.lr.ph.i.i96.i.i._crit_edge, label %.lr.ph, !llvm.loop !138

countchar.exit.i109.i.i:                          ; preds = %bb.dt
  %i.mt = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !156 ; 12 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bytearray_replace_impl.exit, label %bb.du

bb.du:                                            ; preds = %countchar.exit.i109.i.i
  %i.mv = getelementptr i8, ptr %i.mt, i64 48
  store i64 0, ptr %i.mv, align 8, !tbaa !14
  %i.mw = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val.i.i) #17, !inline_history !156 ; 3 uses
  %i.mx = getelementptr i8, ptr %i.mt, i64 56
  store ptr %i.mw, ptr %i.mx, align 8, !tbaa !21
  %i.my = icmp eq ptr %i.mw, null
  br i1 %i.my, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.mz = load i32, ptr %i.mt, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i111.i.i = icmp sgt i32 %i.mz, -1
  br i1 %.not.i.i.i.i111.i.i, label %bb.dw, label %bytearray_replace_impl.exit

bb.dw:                                            ; preds = %bb.dv
  %i.na = add nsw i32 %i.mz, -1                   ; 2 uses
  store i32 %i.na, ptr %i.mt, align 8, !tbaa !22
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.dx, label %bytearray_replace_impl.exit

bb.dx:                                            ; preds = %bb.dw
  call void @_Py_Dealloc(ptr noundef nonnull %i.mt) #17, !inline_history !156
  br label %bytearray_replace_impl.exit

bb.dy:                                            ; preds = %bb.du
  %i.nc = getelementptr i8, ptr %i.mw, i64 32     ; 3 uses
  %i.nd = getelementptr i8, ptr %i.mt, i64 40
  store ptr %i.nc, ptr %i.nd, align 8, !tbaa !23
  %i.ne = getelementptr i8, ptr %i.mt, i64 32
  store ptr %i.nc, ptr %i.ne, align 8, !tbaa !24
  %i.nf = getelementptr i8, ptr %i.mt, i64 16
  store i64 %.val.i.i, ptr %i.nf, align 8, !tbaa !25
  %i.ng = getelementptr i8, ptr %i.mt, i64 24
  store i64 %.val.i.i, ptr %i.ng, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %.val62.i.i, null
  br i1 %.not.i.i, label %bytearray_replace_impl.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nc, ptr nonnull readonly align 1 %.val62.i.i, i64 %.val.i.i, i1 false)
  br label %bytearray_replace_impl.exit

._crit_edge:                                      ; preds = %.lr.ph
  br label %.lr.ph.i.i96.i.i._crit_edge, !llvm.loop !138

.lr.ph.i.i96.i.i._crit_edge:                      ; preds = %.lr.ph.i.i96.i.i, %._crit_edge, %.lr.ph.preheader.i.i95.i.i
  %.1.i.ph.i100.i.i = phi i64 [ %.0.i.i, %.lr.ph.preheader.i.i95.i.i ], [ %i.mo, %._crit_edge ], [ %.0.i.i, %.lr.ph.i.i96.i.i ] ; 3 uses
  %i.nh = add i64 %.val31, -1                     ; 2 uses
  %i.ni = sub i64 9223372036854775807, %.val.i.i
  %i.nj = sdiv i64 %i.ni, %.1.i.ph.i100.i.i
  %i.nk = icmp sgt i64 %i.nh, %i.nj
  br i1 %i.nk, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.lr.ph.i.i96.i.i._crit_edge
  %i.nl = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.nl, ptr noundef nonnull @.str.107) #17, !inline_history !155
  br label %bytearray_replace_impl.exit

bb.eb:                                            ; preds = %.lr.ph.i.i96.i.i._crit_edge
  %i.nm = mul i64 %.1.i.ph.i100.i.i, %i.nh
  %i.nn = add i64 %i.nm, %.val.i.i                ; 4 uses
  %i.no = icmp slt i64 %i.nn, 0
  br i1 %i.no, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.np = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.np, ptr noundef nonnull @.str) #17, !inline_history !157
  br label %bytearray_replace_impl.exit

bb.ed:                                            ; preds = %bb.eb
  %i.nq = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !157 ; 11 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bytearray_replace_impl.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ns = getelementptr i8, ptr %i.nq, i64 48
  store i64 0, ptr %i.ns, align 8, !tbaa !14
  %i.nt = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.nn) #17, !inline_history !157 ; 3 uses
  %i.nu = getelementptr i8, ptr %i.nq, i64 56
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !21
  %i.nv = icmp eq ptr %i.nt, null
  br i1 %i.nv, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.nw = load i32, ptr %i.nq, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i108.i.i = icmp sgt i32 %i.nw, -1
  br i1 %.not.i.i.i108.i.i, label %bb.eg, label %bytearray_replace_impl.exit

bb.eg:                                            ; preds = %bb.ef
  %i.nx = add nsw i32 %i.nw, -1                   ; 2 uses
  store i32 %i.nx, ptr %i.nq, align 8, !tbaa !22
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.eh, label %bytearray_replace_impl.exit

bb.eh:                                            ; preds = %bb.eg
  call void @_Py_Dealloc(ptr noundef nonnull %i.nq) #17, !inline_history !157
  br label %bytearray_replace_impl.exit

bb.ei:                                            ; preds = %bb.ee
  %i.nz = getelementptr i8, ptr %i.nt, i64 32     ; 3 uses
  %i.oa = getelementptr i8, ptr %i.nq, i64 40
  store ptr %i.nz, ptr %i.oa, align 8, !tbaa !23
  %i.ob = getelementptr i8, ptr %i.nq, i64 32
  store ptr %i.nz, ptr %i.ob, align 8, !tbaa !24
  %i.oc = getelementptr i8, ptr %i.nq, i64 16
  store i64 %i.nn, ptr %i.oc, align 8, !tbaa !25
  %i.od = getelementptr i8, ptr %i.nq, i64 24
  store i64 %i.nn, ptr %i.od, align 8, !tbaa !26
  br label %bb.ej

bb.ej:                                            ; preds = %bb.em, %bb.ei
  %.in.i101.i.i = phi i64 [ %.1.i.ph.i100.i.i, %bb.ei ], [ %i.oe, %bb.em ] ; 2 uses
  %.0535.i.i.i = phi ptr [ %.val62.i.i, %bb.ei ], [ %.1.i.i.i, %bb.em ] ; 6 uses
  %.0544.i.i.i = phi ptr [ %i.nz, %bb.ei ], [ %.155.i.i.i, %bb.em ] ; 4 uses
  %i.oe = add nsw i64 %.in.i101.i.i, -1
  %i.of = ptrtoint ptr %.0535.i.i.i to i64        ; 2 uses
  %i.og = sub i64 %i.mk, %i.of                    ; 2 uses
  %i.oh = call ptr @memchr(ptr noundef %.0535.i.i.i, i32 noundef %i.mj, i64 noundef %i.og) #18, !inline_history !155 ; 4 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %split.i105.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.oj = icmp eq ptr %i.oh, %.0535.i.i.i
  br i1 %i.oj, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ok = ptrtoint ptr %i.oh to i64
  %i.ol = sub i64 %i.ok, %i.of                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0544.i.i.i, ptr align 1 %.0535.i.i.i, i64 %i.ol, i1 false)
  %i.om = getelementptr i8, ptr %.0544.i.i.i, i64 %i.ol
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.sink.i.i.i = phi ptr [ %i.om, %bb.el ], [ %.0544.i.i.i, %bb.ek ] ; 2 uses
  %.053.pn.i.i.i = phi ptr [ %i.oh, %bb.el ], [ %.0535.i.i.i, %bb.ek ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sink.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val30, i64 range(i64 1, 0) %.val31, i1 false)
  %.1.i.i.i = getelementptr i8, ptr %.053.pn.i.i.i, i64 1 ; 3 uses
  %.155.i.i.i = getelementptr i8, ptr %.sink.i.i.i, i64 %.val31 ; 2 uses
  %i.on = icmp sgt i64 %.in.i101.i.i, 1
  br i1 %i.on, label %bb.ej, label %._crit_edge.i102.i.i, !llvm.loop !158

._crit_edge.i102.i.i:                             ; preds = %bb.em
  %.pre.i103.i.i = ptrtoint ptr %.1.i.i.i to i64
  %.pre6.i104.i.i = sub i64 %i.mk, %.pre.i103.i.i
  br label %split.i105.i.i, !llvm.loop !158

split.i105.i.i:                                   ; preds = %bb.ej, %._crit_edge.i102.i.i
  %.pre-phi7.i106.i.i = phi i64 [ %.pre6.i104.i.i, %._crit_edge.i102.i.i ], [ %i.og, %bb.ej ]
  %.054.lcssa.i.i.i = phi ptr [ %.155.i.i.i, %._crit_edge.i102.i.i ], [ %.0544.i.i.i, %bb.ej ]
  %.053.lcssa.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge.i102.i.i ], [ %.0535.i.i.i, %bb.ej ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.054.lcssa.i.i.i, ptr align 1 %.053.lcssa.i.i.i, i64 %.pre-phi7.i106.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.en:                                            ; preds = %bb.ds
  %i.oo = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %.val69.i.i.i = load ptr, ptr %i.oo, align 8, !tbaa !23 ; 3 uses
  %i.op = icmp slt i64 %.val.i.i, 0
  br i1 %i.op, label %.thread.i124.i.i, label %stringlib_count.exit.i112.i.i

stringlib_count.exit.i112.i.i:                    ; preds = %bb.en
  %i.oq = call fastcc i64 @fastsearch(ptr noundef %.val69.i.i.i, i64 noundef %.val.i.i, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val29, i64 noundef range(i64 1, -9223372036854775808) %.0.i.i, i32 noundef 0), !inline_history !159 ; 2 uses
  %..i.i113.i.i = call i64 @llvm.smax.i64(i64 %i.oq, i64 0) ; 3 uses
  %i.or = icmp slt i64 %i.oq, 1
  br i1 %i.or, label %bb.eo, label %bb.ew

bb.eo:                                            ; preds = %stringlib_count.exit.i112.i.i
  %.val71.pr.i.i.i = load i64, ptr %i.t, align 8, !tbaa !25 ; 6 uses
  %.val72.i.i.i = load ptr, ptr %i.oo, align 8, !tbaa !23 ; 2 uses
  %i.os = icmp slt i64 %.val71.pr.i.i.i, 0
  br i1 %i.os, label %.thread.i124.i.i, label %bb.ep

.thread.i124.i.i:                                 ; preds = %bb.eo, %bb.en
  %i.ot = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ot, ptr noundef nonnull @.str) #17, !inline_history !160
  br label %bytearray_replace_impl.exit

bb.ep:                                            ; preds = %bb.eo
  %i.ou = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !160 ; 12 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bytearray_replace_impl.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ow = getelementptr i8, ptr %i.ou, i64 48
  store i64 0, ptr %i.ow, align 8, !tbaa !14
  %i.ox = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val71.pr.i.i.i) #17, !inline_history !160 ; 3 uses
  %i.oy = getelementptr i8, ptr %i.ou, i64 56
  store ptr %i.ox, ptr %i.oy, align 8, !tbaa !21
  %i.oz = icmp eq ptr %i.ox, null
  br i1 %i.oz, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.pa = load i32, ptr %i.ou, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i123.i.i = icmp sgt i32 %i.pa, -1
  br i1 %.not.i.i.i.i123.i.i, label %bb.es, label %bytearray_replace_impl.exit

bb.es:                                            ; preds = %bb.er
  %i.pb = add nsw i32 %i.pa, -1                   ; 2 uses
  store i32 %i.pb, ptr %i.ou, align 8, !tbaa !22
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.et, label %bytearray_replace_impl.exit

bb.et:                                            ; preds = %bb.es
  call void @_Py_Dealloc(ptr noundef nonnull %i.ou) #17, !inline_history !160
  br label %bytearray_replace_impl.exit

bb.eu:                                            ; preds = %bb.eq
  %i.pd = getelementptr i8, ptr %i.ox, i64 32     ; 3 uses
  %i.pe = getelementptr i8, ptr %i.ou, i64 40
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !23
  %i.pf = getelementptr i8, ptr %i.ou, i64 32
  store ptr %i.pd, ptr %i.pf, align 8, !tbaa !24
  %i.pg = getelementptr i8, ptr %i.ou, i64 16
  store i64 %.val71.pr.i.i.i, ptr %i.pg, align 8, !tbaa !25
  %i.ph = getelementptr i8, ptr %i.ou, i64 24
  store i64 %.val71.pr.i.i.i, ptr %i.ph, align 8, !tbaa !26
  %i.pi = icmp ne ptr %.val72.i.i.i, null
  %i.pj = icmp ne i64 %.val71.pr.i.i.i, 0
  %or.cond.i.i.i122.i.i = and i1 %i.pj, %i.pi
  br i1 %or.cond.i.i.i122.i.i, label %bb.ev, label %bytearray_replace_impl.exit

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pd, ptr nonnull readonly align 1 %.val72.i.i.i, i64 %.val71.pr.i.i.i, i1 false)
  br label %bytearray_replace_impl.exit

bb.ew:                                            ; preds = %stringlib_count.exit.i112.i.i
  %i.pk = sub i64 %.val31, %.val29                ; 2 uses
  %i.pl = sub nuw nsw i64 9223372036854775807, %.val.i.i
  %i.pm = udiv i64 %i.pl, %..i.i113.i.i
  %i.pn = icmp sgt i64 %i.pk, %i.pm
  br i1 %i.pn, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.po = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.po, ptr noundef nonnull @.str.107) #17, !inline_history !159
  br label %bytearray_replace_impl.exit

bb.ey:                                            ; preds = %bb.ew
end_hunk_1
