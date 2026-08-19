inline.NumInlined: 123
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@zoneinfo_fromutc:bb.a
bb.aw:                                            ; preds = %Py_DECREF.exit105.thread, %bb.e, %bb.b
  %.5 = phi ptr [ null, %bb.e ], [ %.477, %Py_DECREF.exit105.thread ], [ null, %bb.b ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_reduce(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 201
  %i.b = load i8, ptr %i.a, align 1, !tbaa !101   ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #9 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.66) #9 ; 0 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i15 = icmp sgt i32 %i.g, -1
  br i1 %.not.i15, label %bb.d, label %Py_DECREF.exit16

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !23
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %Py_DECREF.exit16.sink.split, label %Py_DECREF.exit16

bb.e:                                             ; preds = %bb.a
  %i.j = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #9 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i8 %i.b, 1
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = zext i1 %i.l to i32
  %i.p = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.67, ptr noundef nonnull %i.j, ptr noundef %i.n, i32 noundef %i.o) #9 ; 3 uses
  %i.q = load i32, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit16

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !23
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %Py_DECREF.exit16.sink.split, label %Py_DECREF.exit16

Py_DECREF.exit16.sink.split:                      ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.d, %bb.d ], [ %i.j, %bb.g ]
  %.2.ph = phi ptr [ null, %bb.d ], [ %i.p, %bb.g ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #9
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %Py_DECREF.exit16.sink.split, %bb.g, %bb.f, %bb.d, %bb.c, %bb.e, %bb.b
  %.2 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ %i.p, %bb.g ], [ null, %bb.c ], [ null, %bb.d ], [ %i.p, %bb.f ], [ %.2.ph, %Py_DECREF.exit16.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_ZoneInfo__unpickle(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = icmp eq ptr %4, null
  %i.d = icmp eq i64 %3, 2
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo__unpickle._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %zoneinfo_ZoneInfo__unpickle_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = call i64 @PyLong_AsNativeBytes(ptr noundef %i.j, ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 23) #9 ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %zoneinfo_ZoneInfo__unpickle_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.m = icmp samesign ugt i64 %i.k, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !20
  %i.o = call i32 @PyErr_WarnEx(ptr noundef %i.n, ptr noundef nonnull @.str.68, i64 noundef 1) #9
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %zoneinfo_ZoneInfo__unpickle_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load i8, ptr %i.b, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call fastcc ptr @zoneinfo_ZoneInfo_impl(ptr noundef %0, ptr noundef %i.h), !inline_history !120
  br label %zoneinfo_ZoneInfo__unpickle_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %1, i64 888
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.t = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !96
  %i.u = call fastcc ptr @zoneinfo_new_instance(ptr noundef %.val.val.i, ptr noundef %0, ptr noundef %i.h), !inline_history !120
  br label %zoneinfo_ZoneInfo__unpickle_impl.exit

zoneinfo_ZoneInfo__unpickle_impl.exit:            ; preds = %bb.d, %.thread, %bb.g, %bb.f, %bb.b
  %.023 = phi ptr [ null, %bb.b ], [ %i.u, %bb.g ], [ %i.r, %bb.f ], [ null, %.thread ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_init_subclass(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %new_weak_cache.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyObject_CallNoArgs(ptr noundef nonnull %i.a) #9 ; 5 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %new_weak_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %new_weak_cache.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #9
  br label %new_weak_cache.exit

new_weak_cache.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %new_weak_cache.exit.thread, label %bb.e

bb.e:                                             ; preds = %new_weak_cache.exit
  %i.h = tail call i32 @PyObject_SetAttrString(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.c) #9
  %i.i = icmp slt i32 %i.h, 0
  %i.j = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %._Py_NoneStruct = select i1 %i.i, ptr null, ptr @_Py_NoneStruct
  br label %new_weak_cache.exit.thread

new_weak_cache.exit.thread:                       ; preds = %bb.a, %Py_DECREF.exit, %new_weak_cache.exit
  %.0 = phi ptr [ null, %new_weak_cache.exit ], [ %._Py_NoneStruct, %Py_DECREF.exit ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #3

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyErr_Occurred() local_unnamed_addr #3

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zoneinfo_new_instance(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.b, ptr noundef %2, ptr noundef null) #9 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.c, @_Py_NoneStruct
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %i.g, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef %2) #9 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i80 = icmp sgt i32 %i.i, -1
  br i1 %.not.i80, label %bb.e, label %Py_DECREF.exit81

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !23
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit81.sink.split, label %Py_DECREF.exit81

.critedge:                                        ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]  ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = tail call ptr %i.m(ptr noundef %1, i64 noundef 0) #9 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Py_DECREF.exit75, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.p = icmp eq ptr %.0, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.r, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.41) #9 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.s, %bb.g ], [ %.0, %bb.f ]   ; 6 uses
  %i.u = tail call fastcc i32 @load_data(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %.1)
  %.not66 = icmp eq i32 %i.u, 0
  br i1 %.not66, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %.1, ptr noundef nonnull @.str.42, ptr noundef null) #9 ; 4 uses
  %i.w = load i32, ptr %.1, align 8, !tbaa !23    ; 2 uses
  %.not.i78 = icmp sgt i32 %i.w, -1
  br i1 %.not.i78, label %bb.j, label %Py_DECREF.exit79

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %.1, align 8, !tbaa !23
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %Py_DECREF.exit79

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #9
  br label %Py_DECREF.exit79

Py_DECREF.exit79:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.z = icmp eq ptr %i.v, null
  br i1 %i.z, label %bb.p, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit79
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %.not.i76 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i76, label %bb.m, label %Py_DECREF.exit77

bb.m:                                             ; preds = %bb.l
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !23
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %Py_DECREF.exit77

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #9
  br label %Py_DECREF.exit77

Py_DECREF.exit77:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.ad = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %Py_DECREF.exit75.thread, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit77
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %2, align 8, !tbaa !23
  br label %Py_DECREF.exit75.thread

Py_DECREF.exit75.thread:                          ; preds = %bb.o, %Py_DECREF.exit77
  %i.ag = getelementptr i8, ptr %i.n, i64 16
  store ptr %2, ptr %i.ag, align 8, !tbaa !56
  br label %Py_DECREF.exit71

bb.p:                                             ; preds = %bb.g, %bb.h, %Py_DECREF.exit79
  %.251.ph = phi ptr [ null, %bb.g ], [ null, %Py_DECREF.exit79 ], [ %.1, %bb.h ] ; 3 uses
  %i.ah = load i32, ptr %i.n, align 8, !tbaa !23  ; 2 uses
  %.not.i74 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i74, label %bb.q, label %Py_DECREF.exit75

bb.q:                                             ; preds = %bb.p
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !23
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %Py_DECREF.exit75

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #9
  br label %Py_DECREF.exit75

Py_DECREF.exit75:                                 ; preds = %bb.r, %bb.q, %bb.p, %.critedge
  %.352 = phi ptr [ %.251.ph, %bb.r ], [ %.0, %.critedge ], [ %.251.ph, %bb.p ], [ %.251.ph, %bb.q ] ; 5 uses
  %.not68 = icmp eq ptr %.352, null
  br i1 %.not68, label %Py_DECREF.exit71, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit75
  %i.ak = tail call ptr @PyErr_GetRaisedException() #9
  %i.al = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %.352, ptr noundef nonnull @.str.42, ptr noundef null) #9 ; 4 uses
  tail call void @_PyErr_ChainExceptions1(ptr noundef %i.ak) #9
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %Py_XDECREF.exit, label %.split

.split:                                           ; preds = %bb.s
  %i.an = load i32, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i, label %bb.t, label %Py_XDECREF.exit

bb.t:                                             ; preds = %.split
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !23
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.u, label %Py_XDECREF.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #9
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.s, %bb.u, %bb.t, %.split
  %i.aq = load i32, ptr %.352, align 8, !tbaa !23 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i70, label %bb.v, label %Py_DECREF.exit71

bb.v:                                             ; preds = %Py_XDECREF.exit
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %.352, align 8, !tbaa !23
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.w, label %Py_DECREF.exit71

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %.352) #9
  br label %Py_DECREF.exit71

Py_DECREF.exit71:                                 ; preds = %bb.w, %bb.v, %Py_XDECREF.exit, %Py_DECREF.exit75.thread, %Py_DECREF.exit75
  %.4 = phi ptr [ %i.n, %Py_DECREF.exit75.thread ], [ null, %Py_DECREF.exit75 ], [ null, %Py_XDECREF.exit ], [ null, %bb.v ], [ null, %bb.w ] ; 3 uses
  %i.at = load i32, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.at, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit81

bb.x:                                             ; preds = %Py_DECREF.exit71
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.c, align 8, !tbaa !23
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %Py_DECREF.exit81.sink.split, label %Py_DECREF.exit81

Py_DECREF.exit81.sink.split:                      ; preds = %bb.x, %bb.e
  %.3.ph = phi ptr [ null, %bb.e ], [ %.4, %bb.x ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #9
  br label %Py_DECREF.exit81

Py_DECREF.exit81:                                 ; preds = %Py_DECREF.exit81.sink.split, %bb.x, %Py_DECREF.exit71, %bb.e, %bb.d, %bb.a
  %.3 = phi ptr [ %.4, %bb.x ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], [ %.4, %Py_DECREF.exit71 ], [ %.3.ph, %Py_DECREF.exit81.sink.split ]
  ret ptr %.3
}

declare ptr @PyObject_CallFunctionObjArgs(ptr noundef, ...) local_unnamed_addr #3

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @load_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((24, 32), (56, 88), (192, 200)) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 56         ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 64         ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 80         ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 192        ; 14 uses
  store ptr null, ptr %i.d, align 8, !tbaa !72
  %i.e = getelementptr i8, ptr %1, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !64
  %i.f = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %i.g, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, ptr noundef %2) #9 ; 12 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  br i1 %i.i, label %.loopexit327, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not = icmp eq ptr %.val, @PyTuple_Type
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !20
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.h) #9 ; 0 uses
  br label %.loopexit327

bb.d:                                             ; preds = %bb.b
  %i.m = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.h, i64 noundef 0) #9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit327, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.h, i64 noundef 1) #9 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit327, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.h, i64 noundef 2) #9 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit327, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.h, i64 noundef 3) #9 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit327, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.h, i64 noundef 4) #9 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit327, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.h, i64 noundef 5) #9 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit327, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i64 @PyTuple_Size(ptr noundef nonnull %i.o) #9 ; 3 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.loopexit327, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i64 @PyTuple_Size(ptr noundef nonnull %i.q) #9 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit327, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %1, i64 40        ; 9 uses
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !109
  %i.ad = getelementptr i8, ptr %1, i64 48        ; 14 uses
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !71
  %i.ae = shl i64 %i.y, 3
  %i.af = tail call ptr @PyMem_Malloc(i64 noundef %i.ae) #9 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !69
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread311, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !109
  %i.ai = shl i64 %i.ah, 3
  %i.aj = tail call ptr @PyMem_Malloc(i64 noundef %i.ai) #9 ; 30 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit327, label %.preheader330

.preheader330:                                    ; preds = %bb.m
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !109
  %.not353 = icmp eq i64 %i.al, 0
  br i1 %.not353, label %.preheader330.._crit_edge_crit_edge, label %.lr.ph

.preheader330.._crit_edge_crit_edge:              ; preds = %.preheader330
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !71
  br label %._crit_edge

bb.n:                                             ; preds = %bb.s
  %i.am = add nuw i64 %.0225336, 1                ; 2 uses
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !109
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !121

.lr.ph:                                           ; preds = %.preheader330, %bb.n
  %.0225336 = phi i64 [ %i.am, %bb.n ], [ 0, %.preheader330 ] ; 5 uses
  %i.ap = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.o, i64 noundef %.0225336) #9 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit327, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ar = tail call i64 @PyLong_AsLongLong(ptr noundef nonnull %i.ap) #9 ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.0225336
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !110
  %i.au = icmp eq i64 %i.ar, -1
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @PyErr_Occurred() #9
  %.not265 = icmp eq ptr %i.av, null
  br i1 %.not265, label %bb.q, label %.loopexit327

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.m, i64 noundef %.0225336) #9 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.loopexit327, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.aw) #9 ; 4 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %.loopexit327, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr [8 x i8], ptr %i.aj, i64 %.0225336
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !110
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.bc = icmp ugt i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.t, label %bb.n

bb.t:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  %i.be = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bd, ptr noundef nonnull @.str.45, i64 noundef %i.ay) #9 ; 0 uses
  br label %.loopexit327

._crit_edge:                                      ; preds = %bb.n, %.preheader330.._crit_edge_crit_edge
  %i.bf = phi i64 [ %.pre, %.preheader330.._crit_edge_crit_edge ], [ %i.bb, %bb.n ]
  %i.bg = shl i64 %i.bf, 3
  %i.bh = tail call ptr @PyMem_Malloc(i64 noundef %i.bg) #9 ; 22 uses
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !71
  %i.bj = tail call ptr @PyMem_Malloc(i64 noundef %i.bi) #9 ; 21 uses
  %i.bk = icmp eq ptr %i.bh, null
  %i.bl = icmp eq ptr %i.bj, null
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond, label %.loopexit327, label %.preheader328

.preheader328:                                    ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !71
  %.not354 = icmp eq i64 %i.bm, 0
  br i1 %.not354, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %.preheader328, %bb.y
  %.0222337 = phi i64 [ %i.bz, %bb.y ], [ 0, %.preheader328 ] ; 5 uses
  %i.bn = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.q, i64 noundef %.0222337) #9 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.loopexit327, label %bb.u

bb.u:                                             ; preds = %.lr.ph338
  %i.bp = tail call i64 @PyLong_AsLong(ptr noundef nonnull %i.bn) #9 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bh, i64 %.0222337
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !110
  %i.br = icmp eq i64 %i.bp, -1
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = tail call ptr @PyErr_Occurred() #9
  %.not266 = icmp eq ptr %i.bs, null
  br i1 %.not266, label %bb.w, label %.loopexit327

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = tail call ptr @PyTuple_GetItem(ptr noundef nonnull %i.s, i64 noundef %.0222337) #9 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.loopexit327, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.bt) #9 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.loopexit327, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = trunc i32 %i.bv to i8
  %i.by = getelementptr i8, ptr %i.bj, i64 %.0222337
end_hunk_0
begin_hunk_1_@get_local_timestamp:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bk, align 8, !tbaa !23
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %Py_DECREF.exit62

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #9
  br label %Py_DECREF.exit62

Py_DECREF.exit62:                                 ; preds = %bb.o, %bb.p, %bb.q
  %i.bq = and i64 %i.bm, 4294967295
  %i.br = icmp eq i64 %i.bq, 4294967295
  br i1 %i.br, label %.critedge, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit62
  %i.bs = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.59) #9 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = tail call i64 @PyLong_AsLong(ptr noundef nonnull %i.bs) #9 ; 2 uses
  %i.bv = load i32, ptr %i.bs, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.bv, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.bs, align 8, !tbaa !23
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bs) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.t, %bb.u
  %i.by = and i64 %i.bu, 4294967295
  %.not73 = icmp eq i64 %i.by, 4294967295
  br i1 %.not73, label %.critedge, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit, %ymd_to_ord.exit
  %.145 = phi i64 [ %i.z, %ymd_to_ord.exit ], [ %i.bu, %Py_DECREF.exit ]
  %.143 = phi i32 [ %i.as, %ymd_to_ord.exit ], [ %i.aw, %Py_DECREF.exit ]
  %.141 = phi i64 [ %i.w, %ymd_to_ord.exit ], [ %i.bm, %Py_DECREF.exit ]
  %.139 = phi i64 [ %i.t, %ymd_to_ord.exit ], [ %i.be, %Py_DECREF.exit ]
  %i.bz = add i32 %.143, -719163
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, 86400
  %sext = shl i64 %.139, 32
  %i.cc = ashr exact i64 %sext, 32
  %i.cd = mul nsw i64 %i.cc, 3600
  %sext58 = mul i64 %.141, 257698037760
  %i.ce = ashr exact i64 %sext58, 32
  %sext59 = shl i64 %.145, 32
  %i.cf = ashr exact i64 %sext59, 32
  %i.cg = add nsw i64 %i.ce, %i.cf
  %i.ch = add nsw i64 %i.cg, %i.cb
  %i.ci = add nsw i64 %i.ch, %i.cd
  store i64 %i.ci, ptr %1, align 8, !tbaa !110
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.e, %bb.i, %bb.j, %Py_DECREF.exit64, %bb.n, %Py_DECREF.exit62, %Py_DECREF.exit, %bb.v
  %.1 = phi i32 [ 0, %bb.v ], [ -1, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit62 ], [ -1, %bb.n ], [ -1, %Py_DECREF.exit64 ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.e ], [ -1, %bb.r ]
  ret i32 %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #3

declare ptr @PyDict_New() local_unnamed_addr #3

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #3

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zoneinfo_ZoneInfo_impl(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @PyType_GetModuleByDef(ptr noundef %0, ptr noundef nonnull @zoneinfomodule) #9, !inline_history !139
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %i.a) #9, !inline_history !139 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %.not.i70 = icmp eq ptr %0, %i.c
  br i1 %.not.i70, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %.not17.i.i = icmp eq ptr %i.e, null
  br i1 %.not17.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.0918.i.i = phi ptr [ %i.j, %bb.d ], [ %i.e, %bb.b ] ; 9 uses
  %i.f = getelementptr i8, ptr %.0918.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = tail call i32 @PyObject_RichCompareBool(ptr noundef %1, ptr noundef %i.g, i32 noundef 2) #9 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not13.i.i = icmp eq i32 %i.h, 0
  br i1 %.not13.i.i, label %bb.d, label %find_in_strong_cache.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.0918.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !99

find_in_strong_cache.exit.i:                      ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !140  ; 4 uses
  %i.l = icmp eq ptr %i.k, %.0918.i.i
  br i1 %i.l, label %move_strong_cache_node_to_front.exit.i, label %bb.e

bb.e:                                             ; preds = %find_in_strong_cache.exit.i
  %.pre.pre.i.i.i = load ptr, ptr %.0918.i.i, align 8, !tbaa !35 ; 3 uses
  %i.m = getelementptr i8, ptr %.0918.i.i, i64 8  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.pre.pre.i.i.i, ptr %i.n, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not14.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  br i1 %.not14.i.i.i, label %remove_from_strong_cache.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %.pre.pre.i.i.i, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !100
  br label %remove_from_strong_cache.exit.i.i

remove_from_strong_cache.exit.i.i:                ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.m, align 8
  store ptr %i.k, ptr %.0918.i.i, align 8, !tbaa !35
  %.not.i14.i = icmp eq ptr %i.k, null
  br i1 %.not.i14.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %remove_from_strong_cache.exit.i.i
  %i.p = getelementptr i8, ptr %i.k, i64 8
  store ptr %.0918.i.i, ptr %i.p, align 8, !tbaa !100
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %remove_from_strong_cache.exit.i.i
  store ptr %.0918.i.i, ptr %i.d, align 8, !tbaa !140
  br label %move_strong_cache_node_to_front.exit.i

move_strong_cache_node_to_front.exit.i:           ; preds = %bb.j, %find_in_strong_cache.exit.i
  %i.q = getelementptr i8, ptr %.0918.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %.critedge, label %bb.k

bb.k:                                             ; preds = %move_strong_cache_node_to_front.exit.i
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %i.r, align 8, !tbaa !23
  br label %.critedge

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.d, %bb.a, %bb.b
  %i.v = tail call ptr @PyErr_Occurred() #9
  %.not47 = icmp eq ptr %i.v, null
  br i1 %.not47, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.loopexit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.x = icmp eq ptr %0, %i.w
  br i1 %i.x, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.b, i64 40       ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -1073741825
  br i1 %i.ab, label %get_weak_cache.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !23
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !47
  br label %get_weak_cache.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = tail call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef nonnull @.str.36) #9
  br label %get_weak_cache.exit

get_weak_cache.exit:                              ; preds = %bb.m, %bb.n, %bb.o
  %.0.i = phi ptr [ %i.ad, %bb.o ], [ %i.z, %bb.m ], [ %.pre.i, %bb.n ] ; 17 uses
  %i.ae = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %.0.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.39, ptr noundef %1, ptr noundef nonnull @_Py_NoneStruct) #9 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %bb.s

bb.p:                                             ; preds = %get_weak_cache.exit
  %i.ag = load i32, ptr %.0.i, align 8, !tbaa !23 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i61, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %.0.i, align 8, !tbaa !23
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #9
  br label %.critedge

bb.s:                                             ; preds = %get_weak_cache.exit
  %i.aj = icmp eq ptr %i.ae, @_Py_NoneStruct
  br i1 %i.aj, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i59, label %bb.u, label %Py_DECREF.exit60

bb.u:                                             ; preds = %bb.t
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ae, align 8, !tbaa !23
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.v, label %Py_DECREF.exit60

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #9
  br label %Py_DECREF.exit60

Py_DECREF.exit60:                                 ; preds = %bb.t, %bb.u, %bb.v
  %i.an = tail call fastcc ptr @zoneinfo_new_instance(ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef %1) ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.z

bb.w:                                             ; preds = %Py_DECREF.exit60
  %i.ap = load i32, ptr %.0.i, align 8, !tbaa !23 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i57, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %.0.i, align 8, !tbaa !23
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #9
  br label %.critedge

bb.z:                                             ; preds = %Py_DECREF.exit60
  %i.as = getelementptr i8, ptr %i.an, i64 201
  store i8 1, ptr %i.as, align 1, !tbaa !101
  %i.at = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %.0.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef %1, ptr noundef nonnull %i.an) #9 ; 2 uses
  %i.au = load i32, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %.not.i55 = icmp sgt i32 %i.au, -1
  br i1 %.not.i55, label %bb.aa, label %Py_DECREF.exit56

bb.aa:                                            ; preds = %bb.z
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.an, align 8, !tbaa !23
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.ab, label %Py_DECREF.exit56

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.an) #9
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ax = icmp eq ptr %i.at, null
  br i1 %i.ax, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %Py_DECREF.exit56
  %i.ay = load i32, ptr %.0.i, align 8, !tbaa !23 ; 2 uses
  %.not.i53 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i53, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %.0.i, align 8, !tbaa !23
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #9
  br label %.critedge

bb.af:                                            ; preds = %Py_DECREF.exit56, %bb.s
  %.1 = phi ptr [ %i.ae, %bb.s ], [ %i.at, %Py_DECREF.exit56 ] ; 11 uses
  %i.bb = getelementptr i8, ptr %.1, i64 8
  %.1.val = load ptr, ptr %i.bb, align 8, !tbaa !67 ; 2 uses
  %.not.i71 = icmp eq ptr %.1.val, %0
  br i1 %.not.i71, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.af
  %i.bc = tail call i32 @PyType_IsSubtype(ptr noundef %.1.val, ptr noundef %0) #9
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.ag, label %PyObject_TypeCheck.exit.thread

bb.ag:                                            ; preds = %PyObject_TypeCheck.exit
  %i.bd = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !20
  %i.be = tail call ptr @_PyType_Name(ptr noundef %0) #9
  %i.bf = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bd, ptr noundef nonnull @.str.72, ptr noundef nonnull %.1, ptr noundef %i.be, ptr noundef %1) #9 ; 0 uses
  %i.bg = load i32, ptr %.1, align 8, !tbaa !23   ; 2 uses
  %.not.i51 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i51, label %bb.ah, label %Py_DECREF.exit52

bb.ah:                                            ; preds = %bb.ag
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %.1, align 8, !tbaa !23
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ai, label %Py_DECREF.exit52

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #9
  br label %Py_DECREF.exit52

Py_DECREF.exit52:                                 ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.bj = load i32, ptr %.0.i, align 8, !tbaa !23 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.bj, -1
  br i1 %.not.i49, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %Py_DECREF.exit52
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %.0.i, align 8, !tbaa !23
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #9
  br label %.critedge

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.af, %PyObject_TypeCheck.exit
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !38
  %.not.i72 = icmp eq ptr %0, %i.bm
  br i1 %.not.i72, label %bb.al, label %update_strong_cache.exit

bb.al:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.bn = tail call ptr @PyMem_Malloc(i64 noundef 32) #9 ; 11 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %update_strong_cache.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bp = load i32, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.bq = icmp ugt i32 %i.bp, -1073741825
  br i1 %i.bq, label %_Py_NewRef.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.br = add nuw i32 %i.bp, 1
  store i32 %i.br, ptr %1, align 8, !tbaa !23
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.an, %bb.am
  %i.bs = getelementptr i8, ptr %i.bn, i64 16
  store ptr %1, ptr %i.bs, align 8, !tbaa !31
  %i.bt = load i32, ptr %.1, align 8, !tbaa !23   ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, -1073741825
  br i1 %i.bu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_Py_NewRef.exit.i.i
  %i.bv = add nuw i32 %i.bt, 1
  store i32 %i.bv, ptr %.1, align 8, !tbaa !23
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_Py_NewRef.exit.i.i
  %i.bw = getelementptr i8, ptr %i.bn, i64 24
  store ptr %.1, ptr %i.bw, align 8, !tbaa !34
  %i.bx = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !140 ; 4 uses
  %i.bz = icmp eq ptr %i.by, %i.bn
  %.01828.pre32.i = load ptr, ptr %i.bn, align 8, !tbaa !35 ; 4 uses
  br i1 %i.bz, label %move_strong_cache_node_to_front.exit.i77, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = getelementptr i8, ptr %i.bn, i64 8      ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i73, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %.01828.pre32.i, ptr %i.cb, align 8, !tbaa !35
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not14.i.i.i74 = icmp eq ptr %.01828.pre32.i, null
  br i1 %.not14.i.i.i74, label %remove_from_strong_cache.exit.i.i75, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cc = getelementptr i8, ptr %.01828.pre32.i, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !100
  br label %remove_from_strong_cache.exit.i.i75

remove_from_strong_cache.exit.i.i75:              ; preds = %bb.at, %bb.as
  store i64 0, ptr %i.ca, align 8
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !35
  %.not.i.i76 = icmp eq ptr %i.by, null
  br i1 %.not.i.i76, label %bb.av, label %bb.au

bb.au:                                            ; preds = %remove_from_strong_cache.exit.i.i75
  %i.cd = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bn, ptr %i.cd, align 8, !tbaa !100
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %remove_from_strong_cache.exit.i.i75
  store ptr %i.bn, ptr %i.bx, align 8, !tbaa !140
  %.01828.pre.i = load ptr, ptr %i.bn, align 8, !tbaa !35
  br label %move_strong_cache_node_to_front.exit.i77

move_strong_cache_node_to_front.exit.i77:         ; preds = %bb.av, %bb.ap
  %.01828.i = phi ptr [ %.01828.pre32.i, %bb.ap ], [ %.01828.pre.i, %bb.av ] ; 2 uses
  %i.ce = icmp eq ptr %.01828.i, null
  br i1 %i.ce, label %update_strong_cache.exit, label %bb.aw

bb.aw:                                            ; preds = %move_strong_cache_node_to_front.exit.i77
  %.018.i = load ptr, ptr %.01828.i, align 8, !tbaa !35 ; 2 uses
  %i.cf = icmp eq ptr %.018.i, null
  br i1 %i.cf, label %update_strong_cache.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.018.1.i = load ptr, ptr %.018.i, align 8, !tbaa !35 ; 2 uses
  %i.cg = icmp eq ptr %.018.1.i, null
  br i1 %i.cg, label %update_strong_cache.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.018.2.i = load ptr, ptr %.018.1.i, align 8, !tbaa !35 ; 2 uses
  %i.ch = icmp eq ptr %.018.2.i, null
  br i1 %i.ch, label %update_strong_cache.exit, label %bb.az
end_hunk_1
