inline.NumInlined: 552
inline.NumDeleted: 93
begin_hunk_0_@ctype_clear_stginfo:bb.a
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit52

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #18
  br label %Py_DECREF.exit52

Py_DECREF.exit52:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit54
  %i.u = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 4 uses
  %.not44 = icmp eq ptr %i.v, null
  br i1 %.not44, label %Py_DECREF.exit50, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit52
  store ptr null, ptr %i.u, align 8, !tbaa !32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not.i49 = icmp sgt i32 %i.w, -1
  br i1 %.not.i49, label %bb.o, label %Py_DECREF.exit50

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %Py_DECREF.exit50

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #18
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit52
  %i.z = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 4 uses
  %.not45 = icmp eq ptr %i.aa, null
  br i1 %.not45, label %Py_DECREF.exit48, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit50
  store ptr null, ptr %i.z, align 8, !tbaa !32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %.not.i47 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i47, label %bb.r, label %Py_DECREF.exit48

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %Py_DECREF.exit48

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #18
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.s, %bb.r, %bb.q, %Py_DECREF.exit50
  %i.ae = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  %.not46 = icmp eq ptr %i.af, null
  br i1 %.not46, label %Py_DECREF.exit, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit48
  store ptr null, ptr %i.ae, align 8, !tbaa !32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !28
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.v, label %Py_DECREF.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.v, %bb.u, %bb.t, %Py_DECREF.exit48
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ctype_free_stginfo_members(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  tail call void @PyMem_Free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  tail call void @PyMem_Free(ptr noundef %i.d) #18
  store ptr null, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  tail call void @PyMem_Free(ptr noundef %i.f) #18
  store ptr null, ptr %i.e, align 8, !tbaa !40
  tail call void @ctype_clear_stginfo(ptr noundef %0)
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @PyCData_FromBaseObj(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.b) #18
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.e = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.d) #18 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %bb.c, label %PyStgInfo_FromType.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.1) #18
  br label %Py_DECREF.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 140      ; 2 uses
  %.val.i = load i8, ptr %i.h, align 4, !tbaa !43
  %i.i = icmp eq i8 %.val.i, 1
  br i1 %i.i, label %stginfo_set_dict_final.exit, label %bb.d

bb.d:                                             ; preds = %PyStgInfo_FromType.exit
  store i8 1, ptr %i.h, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit

stginfo_set_dict_final.exit:                      ; preds = %PyStgInfo_FromType.exit, %bb.d
  %i.j = getelementptr i8, ptr %1, i64 304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = tail call ptr %i.k(ptr noundef %1, i64 noundef 0) #18 ; 17 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %stginfo_set_dict_final.exit
  %i.n = getelementptr i8, ptr %i.e, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr i8, ptr %i.l, i64 48
  store i64 %i.o, ptr %i.p, align 16, !tbaa !46
  %i.q = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49   ; 4 uses
  %i.s = getelementptr i8, ptr %i.l, i64 40       ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !50
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.l, i64 16
  store ptr %4, ptr %i.t, align 16, !tbaa !51
  %i.u = getelementptr i8, ptr %i.l, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !52
  %i.v = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %2, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.g
  %i.y = getelementptr i8, ptr %i.l, i64 32
  store ptr %2, ptr %i.y, align 16, !tbaa !53
  %i.z = getelementptr i8, ptr %i.l, i64 56
  store i64 %3, ptr %i.z, align 8, !tbaa !54
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %i.r, 17
  %i.ab = getelementptr i8, ptr %i.l, i64 16      ; 3 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.l, i64 80      ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 16, !tbaa !51
  %i.ad = getelementptr i8, ptr %i.l, i64 24
  store i32 1, ptr %i.ad, align 8, !tbaa !52
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call ptr @PyMem_Malloc(i64 noundef %i.r) #18 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 16, !tbaa !51
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.l, i64 24
  store i32 1, ptr %i.ag, align 8, !tbaa !52
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.ah, i1 false)
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !49
  %.pre = load ptr, ptr %i.ab, align 16, !tbaa !51
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call ptr @PyErr_NoMemory() #18     ; 0 uses
  %i.aj = load i32, ptr %i.l, align 16, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.l, align 16, !tbaa !28
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.k, %bb.i
  %i.am = phi ptr [ %.pre, %bb.k ], [ %i.ac, %bb.i ]
  %i.an = phi i64 [ %.pre.i, %bb.k ], [ %i.r, %bb.i ] ; 2 uses
  store i64 %i.an, ptr %i.s, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %4, i64 %i.an, i1 false)
  %i.ao = getelementptr i8, ptr %i.l, i64 56
  store i64 %3, ptr %i.ao, align 8, !tbaa !54
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.m, %bb.l, %_Py_NewRef.exit, %bb.o, %stginfo_set_dict_final.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.l, %_Py_NewRef.exit ], [ null, %stginfo_set_dict_final.exit ], [ %i.l, %bb.o ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.n ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @PyStgInfo_FromType(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #3 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !55
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.b) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_stginfo_from_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.e = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.d) #18 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %.not8.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i, label %_stginfo_from_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %2, align 8, !tbaa !55
  br label %_stginfo_from_type.exit

_stginfo_from_type.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden ptr @PyCData_AtAddress(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef %i.a) #18
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.e) #18
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.h = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.g) #18 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i.i, label %bb.d, label %PyStgInfo_FromType.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.1) #18
  br label %bb.g

PyStgInfo_FromType.exit:                          ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 140      ; 2 uses
  %.val.i = load i8, ptr %i.k, align 4, !tbaa !43
  %i.l = icmp eq i8 %.val.i, 1
  br i1 %i.l, label %stginfo_set_dict_final.exit, label %bb.e

bb.e:                                             ; preds = %PyStgInfo_FromType.exit
  store i8 1, ptr %i.k, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit

stginfo_set_dict_final.exit:                      ; preds = %PyStgInfo_FromType.exit, %bb.e
  %i.m = getelementptr i8, ptr %1, i64 304
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = tail call ptr %i.n(ptr noundef %1, i64 noundef 0) #18 ; 5 uses
  %.not14 = icmp eq ptr %i.o, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %stginfo_set_dict_final.exit
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store ptr %2, ptr %i.p, align 16, !tbaa !51
  %i.q = getelementptr i8, ptr %i.h, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr i8, ptr %i.o, i64 48
  store i64 %i.r, ptr %i.s, align 16, !tbaa !46
  %i.t = getelementptr i8, ptr %i.h, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = getelementptr i8, ptr %i.o, i64 40
  store i64 %i.u, ptr %i.v, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %stginfo_set_dict_final.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.o, %bb.f ], [ null, %stginfo_set_dict_final.exit ]
  ret ptr %.1
}

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_ctypes_simple_instance(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %.not.i = icmp eq ptr %.val, %i.b
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.b) #18
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.b, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.e = getelementptr i8, ptr %1, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp ne ptr %i.f, %i.h
  %i.j = zext i1 %i.i to i32
  br label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit.thread
  %.0 = phi i32 [ %i.j, %PyObject_TypeCheck.exit.thread ], [ 0, %PyObject_TypeCheck.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @PyCData_get(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr %2(ptr noundef %6, i64 noundef %5) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.c) #18
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %PyStgInfo_FromType.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.e) #18 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i.i, label %PyStgInfo_FromType.exit.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.f, i64 72       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %PyStgInfo_FromType.exit.thread, label %bb.e

bb.e:                                             ; preds = %PyStgInfo_FromType.exit
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !15 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.val.i, %i.k
  br i1 %.not.i.i22, label %_ctypes_simple_instance.exit, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.e
  %i.m = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef %i.k) #18
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %_ctypes_simple_instance.exit.thread, label %_ctypes_simple_instance.exit

_ctypes_simple_instance.exit:                     ; preds = %bb.e, %PyObject_TypeCheck.exit.i
  %i.n = getelementptr i8, ptr %1, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %.not29 = icmp eq ptr %i.o, %i.q
  br i1 %.not29, label %_ctypes_simple_instance.exit.thread, label %PyStgInfo_FromType.exit.thread

_ctypes_simple_instance.exit.thread:              ; preds = %PyObject_TypeCheck.exit.i, %_ctypes_simple_instance.exit
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.s = tail call ptr %i.r(ptr noundef %6, i64 noundef %5) #18
  br label %bb.f

end_hunk_0
begin_hunk_1_@_PyCData_set:bb.a
  store i32 %i.av, ptr @_Py_NoneStruct, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.s, %bb.r
  store ptr @_Py_NoneStruct, ptr %i.ao, align 16, !tbaa !66
  br label %GetKeepedObjects.exit.thread

GetKeepedObjects.exit:                            ; preds = %bb.q
  %i.aw = tail call ptr @PyDict_New() #18         ; 3 uses
  store ptr %i.aw, ptr %i.ao, align 16, !tbaa !66
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %Py_DECREF.exit, label %GetKeepedObjects.exit.thread

GetKeepedObjects.exit.thread:                     ; preds = %_Py_NewRef.exit.i.i, %bb.p, %GetKeepedObjects.exit
  %.0.i10 = phi ptr [ %i.aw, %GetKeepedObjects.exit ], [ @_Py_NoneStruct, %_Py_NewRef.exit.i.i ], [ %i.ap, %bb.p ] ; 4 uses
  %i.ay = load i32, ptr %.0.i10, align 8, !tbaa !28 ; 2 uses
  %i.az = icmp ugt i32 %i.ay, -1073741825
  br i1 %i.az, label %Py_DECREF.exit, label %bb.t

bb.t:                                             ; preds = %GetKeepedObjects.exit.thread
  %i.ba = add nuw i32 %i.ay, 1
  store i32 %i.ba, ptr %.0.i10, align 8, !tbaa !28
  br label %Py_DECREF.exit

bb.u:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.bb = getelementptr i8, ptr %0, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63 ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 8
  %.val87 = load ptr, ptr %i.bd, align 8, !tbaa !15 ; 2 uses
  %.not.i95 = icmp eq ptr %.val87, %i.bc
  br i1 %.not.i95, label %PyObject_TypeCheck.exit96.thread, label %PyObject_TypeCheck.exit96

PyObject_TypeCheck.exit96:                        ; preds = %bb.u
  %i.be = tail call i32 @PyType_IsSubtype(ptr noundef %.val87, ptr noundef %i.bc) #18
  %.not15 = icmp eq i32 %i.be, 0
  br i1 %.not15, label %bb.z, label %PyObject_TypeCheck.exit96.thread

PyObject_TypeCheck.exit96.thread:                 ; preds = %bb.u, %PyObject_TypeCheck.exit96
  %i.bf = getelementptr i8, ptr %0, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67 ; 2 uses
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !15 ; 3 uses
  %.not.i97 = icmp eq ptr %.val86, %i.bg
  br i1 %.not.i97, label %PyObject_TypeCheck.exit98.thread, label %PyObject_TypeCheck.exit98

PyObject_TypeCheck.exit98:                        ; preds = %PyObject_TypeCheck.exit96.thread
  %i.bh = tail call i32 @PyType_IsSubtype(ptr noundef %.val86, ptr noundef %i.bg) #18
  %.not16 = icmp eq i32 %i.bh, 0
  br i1 %.not16, label %bb.z, label %PyObject_TypeCheck.exit98.PyObject_TypeCheck.exit98.thread_crit_edge

PyObject_TypeCheck.exit98.PyObject_TypeCheck.exit98.thread_crit_edge: ; preds = %PyObject_TypeCheck.exit98
  %.val90.pre = load ptr, ptr %i.d, align 8, !tbaa !15
  br label %PyObject_TypeCheck.exit98.thread

PyObject_TypeCheck.exit98.thread:                 ; preds = %PyObject_TypeCheck.exit98.PyObject_TypeCheck.exit98.thread_crit_edge, %PyObject_TypeCheck.exit96.thread
  %.val90 = phi ptr [ %.val90.pre, %PyObject_TypeCheck.exit98.PyObject_TypeCheck.exit98.thread_crit_edge ], [ %.val86, %PyObject_TypeCheck.exit96.thread ] ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = tail call i32 @PyObject_IsInstance(ptr noundef %.val90, ptr noundef %i.bj) #18
  %.not.i.i99 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i99, label %PyStgInfo_FromObject.exit, label %bb.v

bb.v:                                             ; preds = %PyObject_TypeCheck.exit98.thread
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bm = tail call ptr @PyObject_GetTypeData(ptr noundef %.val90, ptr noundef %i.bl) #18
  br label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.v, %PyObject_TypeCheck.exit98.thread
  %.03 = phi ptr [ null, %PyObject_TypeCheck.exit98.thread ], [ %i.bm, %bb.v ]
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bo = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %1, ptr noundef %i.bn) #18 ; 0 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bq = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %1, ptr noundef %i.bp) #18
  %i.br = getelementptr i8, ptr %.03, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !68
  %i.bt = getelementptr i8, ptr %i.bq, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !68
  %.not81 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not81, label %bb.x, label %bb.w

bb.w:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.bv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %.val83 = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.bw = getelementptr i8, ptr %.val83, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !62
  %i.by = getelementptr i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bv, ptr noundef nonnull @.str.24, ptr noundef %i.bx, ptr noundef %i.bz) #18 ; 0 uses
  br label %Py_DECREF.exit

bb.x:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.cb = getelementptr i8, ptr %3, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !51
  store ptr %i.cc, ptr %5, align 8, !tbaa !55
  %i.cd = tail call fastcc ptr @GetKeepedObjects(ptr noundef nonnull %3) ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %Py_DECREF.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.cd, ptr noundef nonnull %3) #18
  br label %Py_DECREF.exit

bb.z:                                             ; preds = %PyObject_TypeCheck.exit98, %PyObject_TypeCheck.exit96
  %i.cg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %.val82 = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.ch = getelementptr i8, ptr %.val82, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.cj = getelementptr i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !62
  %i.cl = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cg, ptr noundef nonnull @.str.24, ptr noundef %i.ci, ptr noundef %i.ck) #18 ; 0 uses
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.w, %bb.y, %bb.x, %bb.t, %GetKeepedObjects.exit.thread, %bb.f, %PyObject_TypeCheck.exit93.thread, %.split, %bb.h, %bb.i, %bb.j, %bb.k, %GetKeepedObjects.exit, %PyObject_TypeCheck.exit.thread, %bb.z, %bb.b
  %.3 = phi ptr [ %i.a, %bb.b ], [ null, %GetKeepedObjects.exit ], [ null, %PyObject_TypeCheck.exit.thread ], [ %i.v, %bb.k ], [ %.0.i10, %bb.t ], [ null, %bb.z ], [ null, %.split ], [ %i.n, %bb.f ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit93.thread ], [ null, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %bb.j ], [ %.0.i10, %GetKeepedObjects.exit.thread ], [ %i.cf, %bb.y ], [ null, %bb.w ], [ null, %bb.x ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @KeepRef(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.b, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !28 ; 2 uses
  %.not.i31.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i31.i, label %bb.c, label %KeepRef_lock_held.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr @_Py_NoneStruct, align 8, !tbaa !28
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %KeepRef_lock_held.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #18
  br label %KeepRef_lock_held.exit

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.09.i.i = phi ptr [ %i.g, %.preheader.i ], [ %0, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %.09.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !53  ; 2 uses
  %.not.i37.i = icmp eq ptr %i.g, null
  br i1 %.not.i37.i, label %bb.e, label %.preheader.i, !llvm.loop !64

bb.e:                                             ; preds = %.preheader.i
  %i.h = getelementptr i8, ptr %.09.i.i, i64 64   ; 5 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !66  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %.09.i.i, i64 48
  %i.l = load i64, ptr %i.k, align 16, !tbaa !46
  %.not11.i.i = icmp eq i64 %i.l, 0
  br i1 %.not11.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @PyDict_New() #18          ; 3 uses
  store ptr %i.m, ptr %i.h, align 16, !tbaa !66
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %PyCData_GetContainer.exit.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.o = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !28 ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr @_Py_NoneStruct, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.i, %bb.h
  store ptr @_Py_NoneStruct, ptr %i.h, align 16, !tbaa !66
  br label %bb.l

PyCData_GetContainer.exit.i:                      ; preds = %bb.g
  %i.r = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %.not.i29.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i29.i, label %bb.j, label %KeepRef_lock_held.exit

bb.j:                                             ; preds = %PyCData_GetContainer.exit.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %2, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %KeepRef_lock_held.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %2) #18
  br label %KeepRef_lock_held.exit

bb.l:                                             ; preds = %_Py_NewRef.exit.i.i, %bb.g, %bb.e
  %i.u = phi ptr [ %i.i, %bb.e ], [ %i.m, %bb.g ], [ @_Py_NoneStruct, %_Py_NewRef.exit.i.i ] ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !15
  %.not.i = icmp eq ptr %.val.i, @PyDict_Type
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %2, ptr %i.h, align 16, !tbaa !32
  %i.w = load i32, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i.i, label %bb.n, label %KeepRef_lock_held.exit

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.u, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.o, label %KeepRef_lock_held.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #18
  br label %KeepRef_lock_held.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.z = trunc i64 %1 to i32
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.z) #18
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !53
  %.not15.i.i = icmp eq ptr %i.ae, null
  %.pre.i.i = ptrtoint ptr %i.a to i64            ; 2 uses
  br i1 %.not15.i.i, label %unique_key.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %.neg.i.i = add i64 %.pre.i.i, 255
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.i
  %i.af = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.ar, %bb.r ]
  %.01117.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.ap, %bb.r ] ; 3 uses
  %.01216.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.aq, %bb.r ]
  %i.ag = ptrtoint ptr %.01117.i.i to i64
  %i.ah = sub i64 %.neg.i.i, %i.ag
  %i.ai = icmp ult i64 %i.ah, 16
  br i1 %i.ai, label %unique_key.exit.thread.i, label %bb.r

unique_key.exit.thread.i:                         ; preds = %bb.q
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %.01216.i.i, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !54
  %i.am = trunc i64 %i.al to i32
  %i.an = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.01117.i.i, ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.am) #18
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %.01117.i.i, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.af, align 16, !tbaa !53 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !53
  %.not.i39.i = icmp eq ptr %i.as, null
  br i1 %.not.i39.i, label %unique_key.exit.i, label %bb.q, !llvm.loop !69

unique_key.exit.i:                                ; preds = %bb.r, %bb.p
  %.011.lcssa.i.i = phi ptr [ %i.ac, %bb.p ], [ %i.ap, %bb.r ]
  %i.at = ptrtoint ptr %.011.lcssa.i.i to i64
  %i.au = sub i64 %i.at, %.pre.i.i
  %i.av = call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef %i.au) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.s, label %bb.v

bb.s:                                             ; preds = %unique_key.exit.i, %unique_key.exit.thread.i
  %i.ax = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i27.i, label %bb.t, label %KeepRef_lock_held.exit

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %2, align 8, !tbaa !28
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.u, label %KeepRef_lock_held.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %2) #18
  br label %KeepRef_lock_held.exit

bb.v:                                             ; preds = %unique_key.exit.i
  %i.ba = load ptr, ptr %i.h, align 16, !tbaa !66
  %i.bb = call i32 @PyDict_SetItem(ptr noundef %i.ba, ptr noundef nonnull %i.av, ptr noundef %2) #18 ; 3 uses
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i25.i, label %bb.w, label %Py_DECREF.exit26.i

bb.w:                                             ; preds = %bb.v
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !28
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %Py_DECREF.exit26.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #18
  br label %Py_DECREF.exit26.i

Py_DECREF.exit26.i:                               ; preds = %bb.x, %bb.w, %bb.v
  %i.bf = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i, label %bb.y, label %KeepRef_lock_held.exit

bb.y:                                             ; preds = %Py_DECREF.exit26.i
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %2, align 8, !tbaa !28
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.z, label %KeepRef_lock_held.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %2) #18
  br label %KeepRef_lock_held.exit

KeepRef_lock_held.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %PyCData_GetContainer.exit.i, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.s, %bb.t, %bb.u, %Py_DECREF.exit26.i, %bb.y, %bb.z
  %.0.i = phi i32 [ -1, %bb.u ], [ 0, %bb.d ], [ -1, %bb.k ], [ 0, %bb.o ], [ 0, %bb.b ], [ 0, %bb.c ], [ -1, %PyCData_GetContainer.exit.i ], [ -1, %bb.j ], [ %i.bb, %bb.z ], [ 0, %bb.m ], [ 0, %bb.n ], [ -1, %bb.s ], [ -1, %bb.t ], [ %i.bb, %Py_DECREF.exit26.i ], [ %i.bb, %bb.y ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @PyCArrayType_from_ctype(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %2) #18 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %1, ptr noundef nonnull %i.c) #18 ; 17 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i38 = icmp sgt i32 %i.f, -1
  br i1 %.not.i38, label %bb.c, label %Py_DECREF.exit39

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !28
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit39

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit39

Py_DECREF.exit39:                                 ; preds = %bb.b, %bb.c, %bb.d
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.i = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.k = call i32 @PyDict_GetItemRef(ptr noundef %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !32   ; 6 uses
  %.not.i46 = icmp eq ptr %i.l, null
  br i1 %.not.i46, label %_PyDict_GetItemProxy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val13.i = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %.not14.i = icmp eq ptr %.val13.i, @_PyWeakref_ProxyType
  %.not15.i = icmp eq ptr %.val13.i, @_PyWeakref_CallableProxyType
  %or.cond.i = or i1 %.not14.i, %.not15.i
  br i1 %or.cond.i, label %bb.g, label %_PyDict_GetItemProxy.exit

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @PyWeakref_GetRef(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #18 ; 3 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.h, label %_PyDict_GetItemProxy.exit

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %_PyDict_GetItemProxy.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %_PyDict_GetItemProxy.exit

_PyDict_GetItemProxy.exit:                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %.not26 = icmp eq i32 %.0.i, 0
  br i1 %.not26, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_PyDict_GetItemProxy.exit
  %i.r = load i32, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not.i36 = icmp sgt i32 %i.r, -1
  br i1 %.not.i36, label %bb.k, label %Py_DECREF.exit37

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %Py_DECREF.exit37

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #18
end_hunk_1
begin_hunk_2_@_ctypes_mod_exec:bb.a
  %i.cd = getelementptr i8, ptr %.val.i, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !80
  %i.ce = call i32 @PyModule_AddType(ptr noundef nonnull %0, ptr noundef nonnull %i.cc) #18, !inline_history !119
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %_ctypes_add_types.exit.thread19, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = call ptr @PyType_FromMetaclass(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @dictremover_spec, ptr noundef null) #18, !inline_history !119 ; 2 uses
  %.not199.i = icmp eq ptr %i.cg, null
  br i1 %.not199.i, label %_ctypes_add_types.exit.thread19, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cg, ptr %.val.i, align 8, !tbaa !10
  %i.ch = call ptr @PyType_FromMetaclass(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @structparam_spec, ptr noundef null) #18, !inline_history !119 ; 2 uses
  %.not200.i = icmp eq ptr %i.ch, null
  br i1 %.not200.i, label %_ctypes_add_types.exit.thread19, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr i8, ptr %.val.i, i64 32
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !82
  %.val.i17 = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.cj = call ptr @PyLong_FromLong(i64 noundef 1) #18, !inline_history !120
  %i.ck = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.244, ptr noundef %i.cj) #18, !inline_history !120
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %_ctypes_add_objects.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = call ptr @PyLong_FromLong(i64 noundef 8) #18, !inline_history !120
  %i.cn = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.245, ptr noundef %i.cm) #18, !inline_history !120
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %_ctypes_add_objects.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = call ptr @PyLong_FromLong(i64 noundef 16) #18, !inline_history !120
  %i.cq = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.246, ptr noundef %i.cp) #18, !inline_history !120
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %_ctypes_add_objects.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = call ptr @PyLong_FromLong(i64 noundef 4) #18, !inline_history !120
  %i.ct = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.247, ptr noundef %i.cs) #18, !inline_history !120
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %_ctypes_add_objects.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull @memmove) #18, !inline_history !120
  %i.cw = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.248, ptr noundef %i.cv) #18, !inline_history !120
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %_ctypes_add_objects.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cy = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull @memset) #18, !inline_history !120
  %i.cz = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.249, ptr noundef %i.cy) #18, !inline_history !120
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %_ctypes_add_objects.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull @string_at) #18, !inline_history !120
  %i.dc = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.250, ptr noundef %i.db) #18, !inline_history !120
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %_ctypes_add_objects.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.de = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull @cast) #18, !inline_history !120
  %i.df = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.251, ptr noundef %i.de) #18, !inline_history !120
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %_ctypes_add_objects.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull @wstring_at) #18, !inline_history !120
  %i.di = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.252, ptr noundef %i.dh) #18, !inline_history !120
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %_ctypes_add_objects.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dk = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull @memoryview_at) #18, !inline_history !120
  %i.dl = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.253, ptr noundef %i.dk) #18, !inline_history !120
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %_ctypes_add_objects.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = call ptr @PyLong_FromLong(i64 noundef 0) #18, !inline_history !120
  %i.do = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.254, ptr noundef %i.dn) #18, !inline_history !120
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %_ctypes_add_objects.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = call ptr @PyLong_FromLong(i64 noundef 256) #18, !inline_history !120
  %i.dr = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.255, ptr noundef %i.dq) #18, !inline_history !120
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %_ctypes_add_objects.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = call ptr @PyLong_FromLong(i64 noundef 1024) #18, !inline_history !120
  %i.du = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.256, ptr noundef %i.dt) #18, !inline_history !120
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %_ctypes_add_objects.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = getelementptr i8, ptr %.val.i17, i64 176
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !77 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !28 ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, -1073741825
  br i1 %i.dz, label %_Py_NewRef.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ea = add nuw i32 %i.dy, 1
  store i32 %i.ea, ptr %i.dx, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.av, %bb.au
  %i.eb = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.257, ptr noundef nonnull %i.dx) #18, !inline_history !120
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %_ctypes_add_objects.exit.thread, label %_ctypes_add_objects.exit

_ctypes_add_objects.exit:                         ; preds = %_Py_NewRef.exit.i
  %i.ed = call ptr @PyLong_FromSsize_t(i64 noundef 8) #18, !inline_history !120
  %i.ee = call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.258, ptr noundef %i.ed) #18, !inline_history !120
  %.fr = freeze i32 %i.ee
  %i.ef = icmp slt i32 %.fr, 0
  br i1 %i.ef, label %_ctypes_add_objects.exit.thread, label %_ctypes_add_types.exit.thread19

_ctypes_add_objects.exit.thread:                  ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_Py_NewRef.exit.i, %_ctypes_add_objects.exit
  br label %_ctypes_add_types.exit.thread19

_ctypes_add_types.exit.thread19:                  ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.q, %bb.ag, %_ctypes_add_objects.exit.thread, %_ctypes_add_objects.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.ag ], [ 0, %_ctypes_add_objects.exit ], [ -1, %_ctypes_add_objects.exit.thread ], [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.s ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.y ], [ -1, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.1
}

declare ptr @ffi_closure_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ffi_closure_free(ptr noundef) local_unnamed_addr #2

declare void @_ctypes_init_fielddesc() local_unnamed_addr #2

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #2

declare ptr @PyType_FromMetaclass(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @PyCData_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #18
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %.not.i6 = icmp eq ptr %i.c, null
  br i1 %.not.i6, label %Py_DECREF.exit22.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i21.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i21.i, label %bb.c, label %Py_DECREF.exit22.i

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_DECREF.exit22.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit22.i

Py_DECREF.exit22.i:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %.not18.i = icmp eq i32 %i.h, 0
  br i1 %.not18.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit22.i
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !51  ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 80
  %.not19.i = icmp eq ptr %i.j, %i.k
  br i1 %.not19.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyMem_Free(ptr noundef %i.j) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %Py_DECREF.exit22.i
  %i.l = getelementptr i8, ptr %0, i64 16
  store ptr null, ptr %i.l, align 16, !tbaa !51
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !121 ; 4 uses
  %.not20.i = icmp eq ptr %i.n, null
  br i1 %.not20.i, label %PyCData_clear.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.m, align 16, !tbaa !121
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.i, label %PyCData_clear.exit

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %PyCData_clear.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #18
  br label %PyCData_clear.exit

PyCData_clear.exit:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.r = getelementptr i8, ptr %.val, i64 320
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !122
  tail call void %i.s(ptr noundef nonnull %0) #18
  %i.t = load i32, ptr %.val, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %PyCData_clear.exit
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %.val, align 8, !tbaa !28
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %PyCData_clear.exit, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @PyCData_nohash(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.37) #18
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @PyCData_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #18 ; 2 uses
  %.not32 = icmp eq i32 %i.c, 0
  br i1 %.not32, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !53  ; 2 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #18 ; 2 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %.not35 = icmp eq ptr %.val, null
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 %1(ptr noundef nonnull %.val, ptr noundef %2) #18 ; 2 uses
  %.not36 = icmp eq i32 %i.h, 0
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b, %bb.d
  %.6 = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.d ], [ 0, %bb.g ], [ %i.h, %bb.f ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PyCData_clear(ptr noundef captures(address) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i21 = icmp sgt i32 %i.c, -1
  br i1 %.not.i21, label %bb.c, label %Py_DECREF.exit22

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !28
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit22

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #18
  br label %Py_DECREF.exit22

Py_DECREF.exit22:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit22
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !51  ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 80
  %.not19 = icmp eq ptr %i.i, %i.j
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyMem_Free(ptr noundef %i.i) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %Py_DECREF.exit22
  %i.k = getelementptr i8, ptr %0, i64 16
  store ptr null, ptr %i.k, align 16, !tbaa !51
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !121 ; 4 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.l, align 16, !tbaa !121
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !28
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PyCData_NewGetBuffer(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %.val28, i64 8
  %.val27 = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val27, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !101
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !72 ; 2 uses
  %.val29 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 40    ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = tail call i32 @PyObject_IsInstance(ptr noundef %.val29, ptr noundef %i.f) #18
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %PyStgInfo_FromObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.i = tail call ptr @PyObject_GetTypeData(ptr noundef %.val29, ptr noundef %i.h) #18 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not8.i.i, ptr null, ptr %i.i
  br label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.b, %bb.a
  %.037 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 72
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %PyObject_TypeCheck.exit.thread.i, %PyStgInfo_FromObject.exit
  %.tr10.i.in = phi ptr [ %i.a, %PyStgInfo_FromObject.exit ], [ %i.s, %PyObject_TypeCheck.exit.thread.i ]
  %.tr10.i = load ptr, ptr %.tr10.i.in, align 8, !tbaa !55 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 2 uses
  %i.m = getelementptr i8, ptr %.tr10.i, i64 8
  %.val.i30 = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %.not.i.i31 = icmp eq ptr %.val.i30, %i.l
  br i1 %.not.i.i31, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %tailrecurse.i
  %i.n = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i30, ptr noundef %i.l) #18, !inline_history !123
  %.not9.i = icmp eq i32 %i.n, 0
  br i1 %.not9.i, label %PyCData_item_type.exit, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %tailrecurse.i
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.p = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %.tr10.i, ptr noundef %i.o) #18, !inline_history !123 ; 0 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.r = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %.tr10.i, ptr noundef %i.q) #18, !inline_history !123
  %i.s = getelementptr i8, ptr %i.r, i64 56
  br label %tailrecurse.i

PyCData_item_type.exit:                           ; preds = %PyObject_TypeCheck.exit.i
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %PyCData_item_type.exit
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.v = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %.tr10.i, ptr noundef %i.u) #18
  %.not.i.i32 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i32, label %PyStgInfo_FromType.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.x = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %.tr10.i, ptr noundef %i.w) #18
  br label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.x, %bb.d ]
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !51
  store ptr %i.z, ptr %1, align 8, !tbaa !124
  %i.aa = load i32, ptr %0, align 16, !tbaa !28   ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -1073741825
  br i1 %i.ab, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %PyStgInfo_FromType.exit
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %0, align 16, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %PyStgInfo_FromType.exit, %bb.e
  %i.ad = getelementptr i8, ptr %1, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !126
  %i.ae = getelementptr i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.ag = getelementptr i8, ptr %1, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !127
  %i.ah = getelementptr i8, ptr %1, i64 32
  store i32 0, ptr %i.ah, align 8, !tbaa !128
  %i.ai = getelementptr i8, ptr %.037, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  %i.ak = select i1 %.not, ptr @.str.55, ptr %i.aj
  %i.al = getelementptr i8, ptr %1, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !129
  %i.am = getelementptr i8, ptr %.037, i64 152
  %i.an = load i32, ptr %i.am, align 8, !tbaa !114
  %i.ao = getelementptr i8, ptr %1, i64 36
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !130
  %i.ap = getelementptr i8, ptr %.037, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ar = getelementptr i8, ptr %1, i64 48
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !131
  %i.as = getelementptr i8, ptr %.0, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr i8, ptr %1, i64 24
  store i64 %i.at, ptr %i.au, align 8, !tbaa !132
  %i.av = getelementptr i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit, %PyCData_item_type.exit
  ret i32 0
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ctypes_PyCData___ctypes_from_outparam__(ptr noundef returned captures(ret: address, provenance) %0, ptr readnone captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %_ctypes_PyCData___ctypes_from_outparam___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr %0, align 8, !tbaa !28
  br label %_ctypes_PyCData___ctypes_from_outparam___impl.exit

_ctypes_PyCData___ctypes_from_outparam___impl.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_PyCData___setstate__(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = call i32 (ptr, i64, ptr, ...) @_PyArg_ParseStack(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.42, ptr noundef nonnull @PyDict_Type, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #18
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ctypes_PyCData___setstate___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.g = load i64, ptr %i.c, align 8, !tbaa !134
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.g, i64 %i.i)
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !51
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.k, ptr readonly align 1 %i.f, i64 %spec.select.i, i1 false)
  %i.l = call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef nonnull @.str.43) #18 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ctypes_PyCData___setstate___impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val25.i = load ptr, ptr %i.n, align 8, !tbaa !15 ; 2 uses
  %i.o = getelementptr i8, ptr %.val25.i, i64 168
  %.val26.i = load i64, ptr %i.o, align 8, !tbaa !17
  %i.p = and i64 %.val26.i, 536870912
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.r = getelementptr i8, ptr %0, i64 8
  %.val24.i = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %.val24.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr i8, ptr %.val25.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.44, ptr noundef %i.t, ptr noundef %i.v) #18 ; 0 uses
  %i.x = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i21.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i21.i, label %bb.e, label %_ctypes_PyCData___setstate___impl.exit

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.l, align 8, !tbaa !28
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %_ctypes_PyCData___setstate___impl.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %_ctypes_PyCData___setstate___impl.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = call i32 @PyDict_Update(ptr noundef nonnull %i.l, ptr noundef %i.e) #18
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !28  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.l, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = icmp eq i32 %i.aa, -1
  %._Py_NoneStruct.i = select i1 %i.ae, ptr null, ptr @_Py_NoneStruct
  br label %_ctypes_PyCData___setstate___impl.exit

_ctypes_PyCData___setstate___impl.exit:           ; preds = %Py_DECREF.exit.i, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %._Py_NoneStruct.i, %Py_DECREF.exit.i ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_PyCData___reduce__(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !102
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.45) #18
  br label %_ctypes_PyCData___reduce___impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %1, i64 888
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr i8, ptr %.val8, i64 24
  %.val8.val = load ptr, ptr %i.d, align 8, !tbaa !72 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14.i = load ptr, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %i.f = getelementptr i8, ptr %.val8.val, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = tail call i32 @PyObject_IsInstance(ptr noundef %.val14.i, ptr noundef %i.g) #18 ; 0 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.j = tail call ptr @PyObject_GetTypeData(ptr noundef %.val14.i, ptr noundef %i.i) #18
  %i.k = getelementptr i8, ptr %i.j, i64 136
  %i.l = load i32, ptr %i.k, align 8, !tbaa !135
  %i.m = and i32 %i.l, 768
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.46) #18
  br label %_ctypes_PyCData___reduce___impl.exit

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #18 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ctypes_PyCData___reduce___impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !51
  %i.s = getelementptr i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50
  %i.u = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.r, i64 noundef %i.t) #18
  %i.v = getelementptr i8, ptr %.val8.val, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
end_hunk_2
begin_hunk_3_@CDataType_from_buffer:bb.a
  br label %CDataType_from_buffer_impl.exit

bb.h:                                             ; preds = %bb.g, %.thread
  %.1 = phi i64 [ 0, %.thread ], [ %i.m, %bb.g ]  ; 4 uses
  %i.u = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.v = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr i8, ptr %.val.val, i64 40  ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.y = call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.x) #18
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.aa = call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.z) #18 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i, label %bb.j, label %PyStgInfo_FromType.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.1) #18
  br label %CDataType_from_buffer_impl.exit

PyStgInfo_FromType.exit.i:                        ; preds = %bb.i
  %i.ad = call ptr @PyMemoryView_FromObject(ptr noundef %i.h) #18 ; 20 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %CDataType_from_buffer_impl.exit, label %bb.k

bb.k:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.af = getelementptr i8, ptr %i.ad, i64 56     ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 88
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !128
  %.not32.i = icmp eq i32 %i.ah, 0
  br i1 %.not32.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.74) #18
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i42.i, label %bb.m, label %CDataType_from_buffer_impl.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ad, align 8, !tbaa !28
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %CDataType_from_buffer_impl.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #18
  br label %CDataType_from_buffer_impl.exit

bb.o:                                             ; preds = %bb.k
  %i.am = call i32 @PyBuffer_IsContiguous(ptr noundef %i.af, i8 noundef signext 67) #18
  %.not33.i = icmp eq i32 %i.am, 0
  br i1 %.not33.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.an, ptr noundef nonnull @.str.75) #18
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not.i40.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i40.i, label %bb.q, label %CDataType_from_buffer_impl.exit

bb.q:                                             ; preds = %bb.p
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !28
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %CDataType_from_buffer_impl.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #18
  br label %CDataType_from_buffer_impl.exit

bb.s:                                             ; preds = %bb.o
  %i.ar = getelementptr i8, ptr %i.aa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ad, i64 72
  %i.au = load i64, ptr %i.at, align 8, !tbaa !127 ; 3 uses
  %i.av = sub i64 %i.au, %.1
  %i.aw = icmp sgt i64 %i.as, %i.av
  br i1 %i.aw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ax = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.ay = add i64 %i.as, %.1
  %i.az = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ax, ptr noundef nonnull @.str.76, i64 noundef %i.au, i64 noundef %i.ay) #18 ; 0 uses
  %i.ba = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not.i38.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i38.i, label %bb.u, label %CDataType_from_buffer_impl.exit

bb.u:                                             ; preds = %bb.t
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ad, align 8, !tbaa !28
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.v, label %CDataType_from_buffer_impl.exit

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #18
  br label %CDataType_from_buffer_impl.exit

bb.w:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i64 noundef %i.be, i64 noundef %i.au, i64 noundef %.1) #18
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bh = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not.i36.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i36.i, label %bb.y, label %CDataType_from_buffer_impl.exit

bb.y:                                             ; preds = %bb.x
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.ad, align 8, !tbaa !28
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.z, label %CDataType_from_buffer_impl.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #18
  br label %CDataType_from_buffer_impl.exit

bb.aa:                                            ; preds = %bb.w
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.bl = getelementptr i8, ptr %i.bk, i64 %.1    ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef %i.bm) #18
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.bq = call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.bp) #18
  %.not.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.bs = call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.br) #18 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !42
  %.not8.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not8.i.i.i.i, label %bb.ad, label %PyStgInfo_FromType.exit.i.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bu = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.bu, ptr noundef nonnull @.str.1) #18
  br label %bb.af

PyStgInfo_FromType.exit.i.i:                      ; preds = %bb.ac
  %i.bv = getelementptr i8, ptr %i.bs, i64 140    ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bv, align 4, !tbaa !43
  %i.bw = icmp eq i8 %.val.i.i.i, 1
  br i1 %i.bw, label %stginfo_set_dict_final.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %PyStgInfo_FromType.exit.i.i
  store i8 1, ptr %i.bv, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit.i.i

stginfo_set_dict_final.exit.i.i:                  ; preds = %bb.ae, %PyStgInfo_FromType.exit.i.i
  %i.bx = getelementptr i8, ptr %0, i64 304
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.bz = call ptr %i.by(ptr noundef %0, i64 noundef 0) #18, !inline_history !139 ; 9 uses
  %.not14.i.i = icmp eq ptr %i.bz, null
  br i1 %.not14.i.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %stginfo_set_dict_final.exit.i.i, %bb.ad, %bb.aa
  %i.ca = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not.i34.i = icmp sgt i32 %i.ca, -1
  br i1 %.not.i34.i, label %bb.ag, label %CDataType_from_buffer_impl.exit

bb.ag:                                            ; preds = %bb.af
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %i.ad, align 8, !tbaa !28
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ah, label %CDataType_from_buffer_impl.exit

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #18
  br label %CDataType_from_buffer_impl.exit

bb.ai:                                            ; preds = %stginfo_set_dict_final.exit.i.i
  %i.cd = getelementptr i8, ptr %i.bz, i64 16
  store ptr %i.bl, ptr %i.cd, align 16, !tbaa !51
  %i.ce = getelementptr i8, ptr %i.bs, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = getelementptr i8, ptr %i.bz, i64 48
  store i64 %i.cf, ptr %i.cg, align 16, !tbaa !46
  %i.ch = getelementptr i8, ptr %i.bs, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !49
  %i.cj = getelementptr i8, ptr %i.bz, i64 40
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !50
  %i.ck = call fastcc i32 @KeepRef(ptr noundef nonnull %i.bz, i64 noundef -1, ptr noundef nonnull %i.ad)
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %bb.aj, label %CDataType_from_buffer_impl.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cm = load i32, ptr %i.bz, align 16, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cm, -1
  br i1 %.not.i.i, label %bb.ak, label %CDataType_from_buffer_impl.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %i.bz, align 16, !tbaa !28
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.al, label %CDataType_from_buffer_impl.exit

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #18
  br label %CDataType_from_buffer_impl.exit

CDataType_from_buffer_impl.exit:                  ; preds = %.thread43, %Py_DECREF.exit.thread, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %PyStgInfo_FromType.exit.i, %bb.j, %bb.b
  %.032 = phi ptr [ null, %bb.b ], [ null, %bb.al ], [ null, %bb.j ], [ null, %bb.n ], [ %i.bz, %bb.ai ], [ null, %bb.r ], [ null, %bb.v ], [ null, %bb.z ], [ null, %bb.ah ], [ null, %PyStgInfo_FromType.exit.i ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.032
}

; Function Attrs: nounwind uwtable
define internal ptr @CDataType_from_buffer_copy(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.b = icmp eq ptr %4, null
  %i.c = add i64 %3, -1
  %i.d = icmp ult i64 %i.c, 2
  %or.cond3 = and i1 %i.b, %i.d
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @CDataType_from_buffer_copy._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %CDataType_from_buffer_copy_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = call i32 @PyObject_GetBuffer(ptr noundef %i.h, ptr noundef nonnull %5, i32 noundef 0) #18
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %bb.c, label %CDataType_from_buffer_copy_impl.exit

bb.c:                                             ; preds = %.thread
  %i.j = icmp slt i64 %3, 2
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = call ptr @_PyNumber_Index(ptr noundef %i.l) #18 ; 5 uses
  %.not36 = icmp eq ptr %i.m, null
  br i1 %.not36, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.m) #18 ; 3 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.r = icmp eq i64 %i.n, -1
  br i1 %i.r, label %Py_DECREF.exit.thread, label %bb.h

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.s = call ptr @PyErr_Occurred() #18
  %.not37 = icmp eq ptr %i.s, null
  br i1 %.not37, label %.thread44, label %CDataType_from_buffer_copy_impl.exit

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.t = icmp slt i64 %i.n, 0
  br i1 %i.t, label %.thread44, label %bb.i

.thread44:                                        ; preds = %Py_DECREF.exit.thread, %bb.h
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.73) #18
  br label %CDataType_from_buffer_copy_impl.exit

bb.i:                                             ; preds = %bb.h, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %i.n, %bb.h ]     ; 4 uses
  %i.v = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.w = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.w, align 8, !tbaa !72 ; 2 uses
  %i.x = getelementptr i8, ptr %.val.val, i64 40  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.y) #18
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ab = call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.aa) #18 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not8.i.i.i, label %bb.k, label %PyStgInfo_FromType.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.1) #18
  br label %CDataType_from_buffer_copy_impl.exit

PyStgInfo_FromType.exit.i:                        ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !127 ; 3 uses
  %i.ai = sub i64 %i.ah, %.1
  %i.aj = icmp sgt i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.ak = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.al = add i64 %i.af, %.1
  %i.am = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ak, ptr noundef nonnull @.str.76, i64 noundef %i.ah, i64 noundef %i.al) #18 ; 0 uses
  br label %CDataType_from_buffer_copy_impl.exit

bb.m:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !124
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i64 noundef %i.ao, i64 noundef %i.ah, i64 noundef %.1) #18
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %CDataType_from_buffer_copy_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = call fastcc ptr @generic_pycdata_new(ptr noundef nonnull readonly %.val.val, ptr noundef %0) ; 3 uses
  %.not20.i = icmp eq ptr %i.ar, null
  br i1 %.not20.i, label %CDataType_from_buffer_copy_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !51
  %i.au = load ptr, ptr %5, align 8, !tbaa !124
  %i.av = getelementptr i8, ptr %i.au, i64 %.1
  %i.aw = load i64, ptr %i.ae, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %CDataType_from_buffer_copy_impl.exit

CDataType_from_buffer_copy_impl.exit:             ; preds = %.thread44, %Py_DECREF.exit.thread, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.thread, %bb.b
  %.031 = phi ptr [ null, %.thread ], [ null, %bb.b ], [ null, %bb.n ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ], [ %i.ar, %bb.o ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread44 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !126
  %.not38 = icmp eq ptr %i.ay, null
  br i1 %.not38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %CDataType_from_buffer_copy_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %5) #18
  br label %bb.q

bb.q:                                             ; preds = %CDataType_from_buffer_copy_impl.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define internal ptr @CDataType_in_dll(ptr noundef %0, ptr readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = icmp eq ptr %4, null
  %i.d = icmp eq i64 %3, 2
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @CDataType_in_dll._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %CDataType_in_dll_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr i8, ptr %.val, i64 168
  %.val29 = load i64, ptr %i.l, align 8, !tbaa !17
  %i.m = and i64 %.val29, 268435456
  %.not27 = icmp eq i64 %i.m, 0
  br i1 %.not27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.j) #18
  br label %CDataType_in_dll_impl.exit

bb.d:                                             ; preds = %.thread
  %i.n = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b) #18 ; 5 uses
end_hunk_3
begin_hunk_4_@CDataType_in_dll:bb.a
  br i1 %.not21.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.85) #18, !inline_history !140
  %i.z = load i32, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i25.i, label %bb.k, label %CDataType_in_dll_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !28
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %CDataType_in_dll_impl.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #18, !inline_history !140
  br label %CDataType_in_dll_impl.exit

bb.m:                                             ; preds = %bb.i
  %i.ac = call ptr @PyLong_AsVoidPtr(ptr noundef nonnull %i.u) #18, !inline_history !140
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !28  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !28
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #18, !inline_history !140
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = call ptr @PyErr_Occurred() #18, !inline_history !140
  %.not22.i = icmp eq ptr %i.ag, null
  br i1 %.not22.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit.i
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.86) #18, !inline_history !140
  br label %CDataType_in_dll_impl.exit

bb.q:                                             ; preds = %Py_DECREF.exit.i
  %i.ai = call ptr @dlerror() #18, !inline_history !140 ; 0 uses
  %i.aj = call ptr @dlsym(ptr noundef %i.ac, ptr noundef nonnull %i.n) #18, !inline_history !140 ; 3 uses
  %.not23.i = icmp eq ptr %i.aj, null
  br i1 %.not23.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.al = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !141
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %.val.i.i = load ptr, ptr %i.am, align 8, !tbaa !72
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef %i.an) #18, !inline_history !140
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %CDataType_in_dll_impl.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %.val.i.i, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = call i32 @PyObject_IsInstance(ptr noundef nonnull %0, ptr noundef %i.ar) #18, !inline_history !140
  %.not.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.au = call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.at) #18, !inline_history !140 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !42
  %.not8.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not8.i.i.i.i, label %bb.u, label %PyStgInfo_FromType.exit.i.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.1) #18, !inline_history !140
  br label %CDataType_in_dll_impl.exit

PyStgInfo_FromType.exit.i.i:                      ; preds = %bb.t
  %i.ax = getelementptr i8, ptr %i.au, i64 140    ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ax, align 4, !tbaa !43
  %i.ay = icmp eq i8 %.val.i.i.i, 1
  br i1 %i.ay, label %stginfo_set_dict_final.exit.i.i, label %bb.v

bb.v:                                             ; preds = %PyStgInfo_FromType.exit.i.i
  store i8 1, ptr %i.ax, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit.i.i

stginfo_set_dict_final.exit.i.i:                  ; preds = %bb.v, %PyStgInfo_FromType.exit.i.i
  %i.az = getelementptr i8, ptr %0, i64 304
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.bb = call ptr %i.ba(ptr noundef nonnull %0, i64 noundef 0) #18, !inline_history !142 ; 5 uses
  %.not14.i.i = icmp eq ptr %i.bb, null
  br i1 %.not14.i.i, label %CDataType_in_dll_impl.exit, label %bb.w

bb.w:                                             ; preds = %stginfo_set_dict_final.exit.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.aj, ptr %i.bc, align 16, !tbaa !51
  %i.bd = getelementptr i8, ptr %i.au, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr i8, ptr %i.bb, i64 48
  store i64 %i.be, ptr %i.bf, align 16, !tbaa !46
  %i.bg = getelementptr i8, ptr %i.au, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !49
  %i.bi = getelementptr i8, ptr %i.bb, i64 40
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !50
  br label %CDataType_in_dll_impl.exit

bb.x:                                             ; preds = %bb.q
  %i.bj = call ptr @dlerror() #18, !inline_history !140 ; 2 uses
  %.not24.i = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32 ; 2 uses
  br i1 %.not24.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_PyErr_SetLocaleString(ptr noundef %i.bk, ptr noundef nonnull %i.bj) #18, !inline_history !140
  br label %CDataType_in_dll_impl.exit

bb.z:                                             ; preds = %bb.x
  %i.bl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bk, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.n) #18, !inline_history !140 ; 0 uses
  br label %CDataType_in_dll_impl.exit

CDataType_in_dll_impl.exit:                       ; preds = %bb.z, %bb.y, %bb.w, %stginfo_set_dict_final.exit.i.i, %bb.u, %bb.r, %bb.p, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.p ], [ null, %bb.l ], [ null, %bb.h ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.u ], [ %i.bb, %bb.w ], [ null, %stginfo_set_dict_final.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CDataType_from_param_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #18
  switch i32 %i.b, label %bb.b [
    i32 -1, label %_Py_NewRef.exit
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %2, align 8, !tbaa !28
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 888
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr i8, ptr %.val42, i64 24
  %.val42.val = load ptr, ptr %i.g, align 8, !tbaa !72 ; 2 uses
  %i.h = getelementptr i8, ptr %.val42.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val41 = load ptr, ptr %i.j, align 8, !tbaa !15
  %.not = icmp eq ptr %.val41, %i.i
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %2, i64 64
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !143 ; 4 uses
  %i.m = getelementptr i8, ptr %.val42.val, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.n) #18
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %PyStgInfo_FromType.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.q = tail call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.p) #18 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %PyStgInfo_FromType.exit.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit.thread:                   ; preds = %bb.e, %bb.f
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %.critedge, label %bb.j

PyStgInfo_FromType.exit:                          ; preds = %bb.f
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %.critedge, label %bb.g

bb.g:                                             ; preds = %PyStgInfo_FromType.exit
  %i.s = getelementptr i8, ptr %i.q, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.u = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %i.l, ptr noundef %i.t) #18
  switch i32 %i.u, label %bb.h [
    i32 -1, label %_Py_NewRef.exit
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %2, align 16, !tbaa !28    ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %2, align 16, !tbaa !28
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.g, %PyStgInfo_FromType.exit.thread
  %i.y = getelementptr i8, ptr %i.l, i64 8
  %.val40 = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.z = getelementptr i8, ptr %.val40, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %PyStgInfo_FromType.exit, %PyStgInfo_FromType.exit.thread, %bb.j
  %i.ab = phi ptr [ %i.aa, %bb.j ], [ @.str.68, %PyStgInfo_FromType.exit ], [ @.str.68, %PyStgInfo_FromType.exit.thread ]
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ac, ptr noundef nonnull @.str.69, ptr noundef %i.ae, ptr noundef %i.ab) #18 ; 0 uses
  br label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.d
  %i.ag = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #18
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %_Py_NewRef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not34 = icmp eq ptr %i.ai, null
  br i1 %.not34, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = call ptr @_PyThreadState_GetCurrent() #18 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 952
  %.val.i.i = load i64, ptr %i.ak, align 8, !tbaa !146 ; 2 uses
  %i.al = call ptr @llvm.frameaddress.p0(i32 0)
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = icmp ule i64 %.val.i.i, %i.am
  %i.ao = add i64 %.val.i.i, -32768
  %i.ap = icmp ugt i64 %i.ao, %i.am
  %narrow.i.not.i.i = or i1 %i.an, %i.ap
  br i1 %narrow.i.not.i.i, label %_Py_EnterRecursiveCall.exit.thread, label %_Py_EnterRecursiveCall.exit

_Py_EnterRecursiveCall.exit:                      ; preds = %bb.m
  %i.aq = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.70) #18
  %.not50 = icmp eq i32 %i.aq, 0
  br i1 %.not50, label %_Py_EnterRecursiveCall.exit.thread, label %bb.n

bb.n:                                             ; preds = %_Py_EnterRecursiveCall.exit
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %.not.i37 = icmp sgt i32 %i.as, -1
  br i1 %.not.i37, label %bb.o, label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.n
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !28
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #18
  br label %_Py_NewRef.exit

_Py_EnterRecursiveCall.exit.thread:               ; preds = %bb.m, %_Py_EnterRecursiveCall.exit
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.aw = call fastcc ptr @CDataType_from_param_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.av) ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i, label %bb.q, label %_Py_NewRef.exit

bb.q:                                             ; preds = %_Py_EnterRecursiveCall.exit.thread
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !28
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %_Py_NewRef.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #18
  br label %_Py_NewRef.exit

bb.s:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.bc = getelementptr i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %.val = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.be = getelementptr i8, ptr %.val, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.bg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bb, ptr noundef nonnull @.str.71, ptr noundef %i.bd, ptr noundef %i.bf) #18 ; 0 uses
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.r, %bb.q, %_Py_EnterRecursiveCall.exit.thread, %bb.p, %bb.o, %bb.n, %.critedge, %bb.g, %bb.h, %bb.i, %bb.c, %bb.b, %bb.s, %bb.k, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.k ], [ %2, %bb.c ], [ null, %bb.s ], [ %2, %bb.i ], [ null, %bb.p ], [ %2, %bb.b ], [ null, %.critedge ], [ null, %bb.g ], [ %2, %bb.h ], [ null, %bb.n ], [ null, %bb.o ], [ %i.aw, %_Py_EnterRecursiveCall.exit.thread ], [ %i.aw, %bb.q ], [ %i.aw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.2
}

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_Py_EnterRecursiveCall() unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyThreadState_GetCurrent() #18 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 952
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !146 ; 2 uses
  %i.c = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = icmp ule i64 %.val.i, %i.d
  %i.f = add i64 %.val.i, -32768
  %i.g = icmp ugt i64 %i.f, %i.d
  %narrow.i.not.i = or i1 %i.e, %i.g
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.70) #18
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

declare i32 @_Py_CheckRecursiveCall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

declare ptr @PyLong_AsVoidPtr(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #2

declare ptr @PyMemoryView_FromObject(ptr noundef) local_unnamed_addr #2

declare i32 @PyBuffer_IsContiguous(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @generic_pycdata_new(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.b) #18
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.e = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.d) #18 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %bb.c, label %PyStgInfo_FromType.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.1) #18
  br label %Py_DECREF.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 140      ; 2 uses
  %.val.i = load i8, ptr %i.h, align 4, !tbaa !43
  %i.i = icmp eq i8 %.val.i, 1
  br i1 %i.i, label %stginfo_set_dict_final.exit, label %bb.d

bb.d:                                             ; preds = %PyStgInfo_FromType.exit
  store i8 1, ptr %i.h, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit

stginfo_set_dict_final.exit:                      ; preds = %PyStgInfo_FromType.exit, %bb.d
  %i.j = getelementptr i8, ptr %1, i64 304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = tail call ptr %i.k(ptr noundef %1, i64 noundef 0) #18 ; 13 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %stginfo_set_dict_final.exit
  %i.m = getelementptr i8, ptr %i.l, i64 32
  store ptr null, ptr %i.m, align 16, !tbaa !53
  %i.n = getelementptr i8, ptr %i.l, i64 56
  %i.o = getelementptr i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45
  %i.q = getelementptr i8, ptr %i.l, i64 48
  store i64 %i.p, ptr %i.q, align 16, !tbaa !46
  %i.r = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %i.t = icmp ult i64 %i.s, 17
  %i.u = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.l, i64 80
  store ptr %i.v, ptr %i.u, align 16, !tbaa !51
  %i.w = getelementptr i8, ptr %i.l, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !52
  br label %PyCData_MallocBuffer.exit

bb.g:                                             ; preds = %bb.e
  %i.x = tail call ptr @PyMem_Malloc(i64 noundef %i.s) #18 ; 3 uses
  store ptr %i.x, ptr %i.u, align 16, !tbaa !51
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.l, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !52
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.aa, i1 false)
  %.pre.i = load i64, ptr %i.r, align 8, !tbaa !49
  br label %PyCData_MallocBuffer.exit

PyCData_MallocBuffer.exit:                        ; preds = %bb.f, %bb.h
  %i.ab = phi i64 [ %.pre.i, %bb.h ], [ %i.s, %bb.f ]
  %i.ac = getelementptr i8, ptr %i.l, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !50
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call ptr @PyErr_NoMemory() #18     ; 0 uses
  %i.ae = load i32, ptr %i.l, align 16, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.l, align 16, !tbaa !28
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %PyCData_MallocBuffer.exit, %stginfo_set_dict_final.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.l, %PyCData_MallocBuffer.exit ], [ null, %stginfo_set_dict_final.exit ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.0
}

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @_PyErr_SetLocaleString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @StructUnionType_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = tail call ptr @PyType_GetDict(ptr noundef %0) #18 ; 20 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Py_DECREF.exit48, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyDict_Contains(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71528)) #18 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i47 = icmp sgt i32 %i.f, -1
  br i1 %.not.i47, label %bb.d, label %Py_DECREF.exit48

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !28
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit48

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit48

bb.f:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i45 = icmp sgt i32 %i.j, -1
  br i1 %.not.i45, label %bb.h, label %Py_DECREF.exit48

bb.h:                                             ; preds = %bb.g
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %Py_DECREF.exit48

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit48

bb.j:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.n = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !101
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  %i.p = getelementptr i8, ptr %.val.i, i64 40    ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.q) #18
  %.not.i56 = icmp eq i32 %i.r, 0
  br i1 %.not.i56, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.t = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.s) #18 ; 8 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %.not16.i = icmp eq i32 %i.u, 0
  br i1 %.not16.i, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.w = tail call ptr @PyType_GetModule(ptr noundef %i.v) #18 ; 4 uses
  %.not17.i = icmp eq ptr %i.w, null
  br i1 %.not17.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr i8, ptr %i.t, i64 120
  store ptr null, ptr %i.x, align 8, !tbaa !96
  %i.y = load i32, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.w, align 8, !tbaa !28
  br label %bb.r

.sink.split:                                      ; preds = %bb.k, %bb.j
  %.str.88.sink = phi ptr [ @.str.88, %bb.j ], [ @.str.89, %bb.k ]
  %i.ab = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.ac = getelementptr i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ab, ptr noundef nonnull %.str.88.sink, ptr noundef %i.ad) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %i.af = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %.not.i43 = icmp sgt i32 %i.af, -1
  br i1 %.not.i43, label %bb.p, label %Py_DECREF.exit48

bb.p:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.c, align 8, !tbaa !28
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %Py_DECREF.exit48

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit48

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.ai = getelementptr i8, ptr %i.t, i64 128
  store ptr %i.w, ptr %i.ai, align 8, !tbaa !97
  store i32 1, ptr %i.t, align 8, !tbaa !42
  %i.aj = tail call ptr @PyMem_Malloc(i64 noundef 2) #18 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.al = tail call ptr @PyErr_NoMemory() #18     ; 0 uses
  %i.am = getelementptr i8, ptr %i.t, i64 144
  store ptr null, ptr %i.am, align 8, !tbaa !39
  %i.an = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %.not.i41 = icmp sgt i32 %i.an, -1
  br i1 %.not.i41, label %bb.t, label %Py_DECREF.exit48

bb.t:                                             ; preds = %bb.s
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !28
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.u, label %Py_DECREF.exit48

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit48

bb.v:                                             ; preds = %bb.r
  store i8 0, ptr %i.aj, align 1, !tbaa !28
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.aj)
  %endptr = getelementptr inbounds i8, ptr %i.aj, i64 %strlen
  store i16 66, ptr %endptr, align 1
  %i.aq = getelementptr i8, ptr %i.t, i64 144
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !39
  %i.ar = getelementptr i8, ptr %i.t, i64 80
  store ptr @StructUnionType_paramfunc, ptr %i.ar, align 8, !tbaa !165
  %i.as = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 72216), ptr noundef nonnull %i.a) #18
  %i.at = icmp slt i32 %i.as, 0
  %i.au = load i32, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  %.not.i39 = icmp sgt i32 %i.au, -1              ; 2 uses
  br i1 %i.at, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i39, label %bb.x, label %Py_DECREF.exit48

bb.x:                                             ; preds = %bb.w
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.c, align 8, !tbaa !28
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.y, label %Py_DECREF.exit48

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit48

bb.z:                                             ; preds = %bb.v
  br i1 %.not.i39, label %bb.aa, label %Py_DECREF.exit38

bb.aa:                                            ; preds = %bb.z
  %i.ax = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !28
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.ab, label %Py_DECREF.exit38

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #18
  br label %Py_DECREF.exit38

Py_DECREF.exit38:                                 ; preds = %bb.z, %bb.aa, %bb.ab
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not34 = icmp eq ptr %i.az, null
  br i1 %.not34, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %Py_DECREF.exit38
  %i.ba = call i32 @PyObject_SetAttr(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 72216), ptr noundef nonnull %i.az) #18
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !32  ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !28 ; 3 uses
  %.not.i35 = icmp sgt i32 %i.bd, -1              ; 2 uses
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not.i35, label %bb.ae, label %Py_DECREF.exit48

bb.ae:                                            ; preds = %bb.ad
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !28
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.af, label %Py_DECREF.exit48

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #18
  br label %Py_DECREF.exit48

bb.ag:                                            ; preds = %bb.ac
  br i1 %.not.i35, label %bb.ah, label %Py_DECREF.exit48

bb.ah:                                            ; preds = %bb.ag
  %i.bg = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !28
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ai, label %Py_DECREF.exit48

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #18
  br label %Py_DECREF.exit48

bb.aj:                                            ; preds = %Py_DECREF.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bi = getelementptr i8, ptr %0, i64 256
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57
  call fastcc void @PyStgInfo_FromType(ptr noundef nonnull %.val.i, ptr noundef %i.bj, ptr noundef %i.b)
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bm = call i32 @PyCStgInfo_clone(ptr noundef nonnull %i.t, ptr noundef nonnull %i.bk) #18 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bo = getelementptr i8, ptr %i.bk, i64 140
  store i8 1, ptr %i.bo, align 4, !tbaa !43
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.0 = phi i32 [ 0, %bb.aj ], [ %i.bm, %bb.al ], [ %i.bm, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.am, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %bb.i ], [ 0, %bb.e ], [ -1, %bb.q ], [ -1, %bb.u ], [ -1, %bb.y ], [ -1, %bb.af ], [ %.0, %bb.am ], [ 0, %bb.c ], [ 0, %bb.d ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.3
}

declare ptr @PyType_GetDict(ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_Contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_ctypes_alloc_format_string(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @PyMem_Malloc(i64 noundef %i.c) #18 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.g = add i64 %i.b, 1
  %i.h = add i64 %i.g, %i.f
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef %i.h) #18 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = tail call ptr @PyErr_NoMemory() #18      ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %.thread
  %i.l = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %0) #18 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.d, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.d, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.n = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.d
  %.0 = phi ptr [ %i.m, %bb.g ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @StructUnionType_paramfunc(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #18 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !51
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.g, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 304
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = tail call ptr %i.l(ptr noundef %i.j, i64 noundef 0) #18 ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.d) #18
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store ptr %i.d, ptr %i.n, align 8, !tbaa !166
  %i.o = load i32, ptr %1, align 16, !tbaa !28    ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %1, align 16, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr i8, ptr %i.m, i64 24
  store ptr %1, ptr %i.r, align 8, !tbaa !168
  br label %_Py_NewRef.exit40

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !51  ; 2 uses
  %i.u = load i32, ptr %1, align 16, !tbaa !28    ; 2 uses
  %i.v = icmp ugt i32 %i.u, -1073741825
  br i1 %i.v, label %_Py_NewRef.exit40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.u, 1
  store i32 %i.w, ptr %1, align 16, !tbaa !28
  br label %_Py_NewRef.exit40

_Py_NewRef.exit40:                                ; preds = %bb.h, %bb.g, %bb.f
  %.036 = phi ptr [ %i.d, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %bb.h ]
  %.034 = phi ptr [ %i.m, %bb.f ], [ %1, %bb.g ], [ %1, %bb.h ] ; 4 uses
  %i.x = tail call ptr @PyCArgObject_new(ptr noundef %0) #18 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_Py_NewRef.exit40
  %i.z = load i32, ptr %.034, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %.034, align 8, !tbaa !28
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.034) #18
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %_Py_NewRef.exit40
  %i.ac = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = tail call i32 @PyObject_IsInstance(ptr noundef %.val, ptr noundef %i.ae) #18
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %PyStgInfo_FromObject.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ah = tail call ptr @PyObject_GetTypeData(ptr noundef %.val, ptr noundef %i.ag) #18 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.ai, 0
  %spec.select = select i1 %.not8.i.i, ptr null, ptr %i.ah
  br label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ null, %bb.l ], [ %spec.select, %bb.m ]
  %i.aj = getelementptr i8, ptr %i.x, i64 24
  store i8 86, ptr %i.aj, align 8, !tbaa !169
  %i.ak = getelementptr i8, ptr %.0, i64 32
  %i.al = getelementptr i8, ptr %i.x, i64 16
  store ptr %i.ak, ptr %i.al, align 16, !tbaa !170
  %i.am = getelementptr i8, ptr %i.x, i64 32
  store ptr %.036, ptr %i.am, align 16, !tbaa !28
  %i.an = load i64, ptr %i.a, align 8, !tbaa !50
  %i.ao = getelementptr i8, ptr %i.x, i64 72
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !171
  %i.ap = getelementptr i8, ptr %i.x, i64 64
  store ptr %.034, ptr %i.ap, align 16, !tbaa !143
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %.thread, %bb.b, %PyStgInfo_FromObject.exit
  %.2 = phi ptr [ null, %.thread ], [ null, %bb.b ], [ %i.x, %PyStgInfo_FromObject.exit ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.2
}

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyCStgInfo_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyType_GetModule(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

declare ptr @PyCArgObject_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @UnionType_setattro(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val9.i = load i64, ptr %i.b, align 8, !tbaa !17
  %i.c = and i64 %.val9.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %1, ptr noundef nonnull @.str.60) #18
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyCStructUnionType_update_stginfo(ptr noundef %0, ptr noundef %2, i32 noundef 0) #18
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_structunion_setattro.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 152), align 8, !tbaa !136
  %i.h = tail call i32 %i.g(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #18, !inline_history !137
  br label %_structunion_setattro.exit

_structunion_setattro.exit:                       ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.h, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @UnionType_init(ptr noundef %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @StructUnionType_init(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @PyCPointerType_init(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = tail call ptr @PyTuple_GetItem(ptr noundef %1, i64 noundef 2) #18 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !101
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !72 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 40    ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.g) #18
  %.not.i24 = icmp eq i32 %i.h, 0
  br i1 %.not.i24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.88, ptr noundef %i.k) #18 ; 0 uses
  br label %Py_DECREF.exit22

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.n = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.m) #18 ; 11 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.89, ptr noundef %i.r) #18 ; 0 uses
  br label %Py_DECREF.exit22

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.u = tail call ptr @PyType_GetModule(ptr noundef %i.t) #18 ; 4 uses
  %.not17.i = icmp eq ptr %i.u, null
  br i1 %.not17.i, label %Py_DECREF.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.n, i64 120
  store ptr null, ptr %i.v, align 8, !tbaa !96
  %i.w = load i32, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %i.x = icmp ugt i32 %i.w, -1073741825
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw i32 %i.w, 1
  store i32 %i.y, ptr %i.u, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr i8, ptr %i.n, i64 128
  store ptr %i.u, ptr %i.z, align 8, !tbaa !97
  store i32 1, ptr %i.n, align 8, !tbaa !42
  %i.aa = getelementptr i8, ptr %i.n, i64 8
  store i64 8, ptr %i.aa, align 8, !tbaa !49
  %i.ab = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.107) #18
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !174
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.n, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !175
  %i.ai = getelementptr i8, ptr %i.n, i64 24
  store i64 1, ptr %i.ai, align 8, !tbaa !45
  %i.aj = getelementptr i8, ptr %i.n, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) @ffi_type_pointer, i64 24, i1 false), !tbaa.struct !176
  %i.ak = getelementptr i8, ptr %i.n, i64 80
  store ptr @PyCPointerType_paramfunc, ptr %i.ak, align 8, !tbaa !165
  %i.al = getelementptr i8, ptr %i.n, i64 136     ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !135
  %i.an = or i32 %i.am, 256
  store i32 %i.an, ptr %i.al, align 8, !tbaa !135
  %i.ao = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73768), ptr noundef nonnull %i.a) #18
  %i.ap = icmp slt i32 %i.ao, 0
end_hunk_4
begin_hunk_5_@PyCArrayType_init:bb.a
  store ptr null, ptr %i.bb, align 8, !tbaa !96
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, -1073741825
  br i1 %i.bd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = add nuw i32 %i.bc, 1
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bf = getelementptr i8, ptr %i.at, i64 128
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !97
  store i32 1, ptr %i.at, align 8, !tbaa !42
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.bi = call i32 @PyObject_IsInstance(ptr noundef %i.bg, ptr noundef %i.bh) #18
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.bk = call ptr @PyObject_GetTypeData(ptr noundef %i.bg, ptr noundef %i.bj) #18 ; 8 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not8.i.i, label %bb.ad, label %PyStgInfo_FromType.exit

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.bm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.bm, ptr noundef nonnull @.str.117) #18
  br label %PyStgInfo_Init.exit.thread

PyStgInfo_FromType.exit:                          ; preds = %bb.ac
  %i.bn = getelementptr i8, ptr %i.bk, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bp = call fastcc ptr @_ctypes_alloc_format_string(ptr noundef null, ptr noundef %i.bo) ; 2 uses
  %i.bq = getelementptr i8, ptr %i.at, i64 144
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !39
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %PyStgInfo_Init.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %PyStgInfo_FromType.exit
  %i.bs = getelementptr i8, ptr %i.bk, i64 152
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !114
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  %i.bv = getelementptr i8, ptr %i.at, i64 152    ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !114
  %i.bw = sext i32 %i.bu to i64
  %i.bx = shl nsw i64 %i.bw, 3
  %i.by = call ptr @PyMem_Malloc(i64 noundef %i.bx) #18 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.at, i64 160
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !40
  %i.ca = icmp eq ptr %i.by, null
  br i1 %i.ca, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cb = call ptr @PyErr_NoMemory() #18          ; 0 uses
  br label %PyStgInfo_Init.exit.thread

bb.ag:                                            ; preds = %bb.ae
  store i64 %i.u, ptr %i.by, align 8, !tbaa !134
  %i.cc = load i32, ptr %i.bv, align 8, !tbaa !114 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ce = getelementptr i8, ptr %i.by, i64 8
  %i.cf = getelementptr i8, ptr %i.bk, i64 160
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !40
  %i.ch = add nsw i32 %i.cc, -1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ce, ptr align 8 %i.cg, i64 %i.cj, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ck = getelementptr i8, ptr %i.bk, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !49 ; 3 uses
  %.not46 = icmp eq i64 %i.cl, 0
  br i1 %.not46, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = sdiv i64 9223372036854775807, %i.cl
  %i.cn = icmp sgt i64 %i.u, %i.cm
  br i1 %i.cn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.co = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.co, ptr noundef nonnull @.str.118) #18
  br label %PyStgInfo_Init.exit.thread

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.cp = getelementptr i8, ptr %i.bk, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !175
  %i.cr = getelementptr i8, ptr %i.bk, i64 136
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !135
  %i.ct = and i32 %i.cs, 768
  %.not47 = icmp eq i32 %i.ct, 0
  br i1 %.not47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr i8, ptr %i.at, i64 136    ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !135
  %i.cw = or i32 %i.cv, 512
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !135
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cx = mul i64 %i.cl, %i.u
  %i.cy = getelementptr i8, ptr %i.at, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !49
  %i.cz = getelementptr i8, ptr %i.at, i64 16
  store i64 %i.cq, ptr %i.cz, align 8, !tbaa !175
  %i.da = getelementptr i8, ptr %i.at, i64 24
  store i64 %i.u, ptr %i.da, align 8, !tbaa !45
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.dc = getelementptr i8, ptr %i.at, i64 56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !68
  store ptr null, ptr %i.b, align 8, !tbaa !32
  %i.dd = getelementptr i8, ptr %i.at, i64 80
  store ptr @PyCArrayType_paramfunc, ptr %i.dd, align 8, !tbaa !165
  %i.de = getelementptr i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) @ffi_type_pointer, i64 24, i1 false), !tbaa.struct !176
  %i.df = getelementptr i8, ptr %i.bk, i64 72     ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !59
  %i.dh = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.119) #18
  %i.di = getelementptr i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !183
  %i.dk = icmp eq ptr %i.dg, %i.dj
  br i1 %i.dk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dl = call fastcc i32 @add_getset(ptr noundef nonnull %0, ptr noundef nonnull @CharArray_getsets)
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %PyStgInfo_Init.exit.thread, label %Py_XDECREF.exit

bb.ap:                                            ; preds = %bb.an
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !59
  %i.do = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.120) #18
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !183
  %i.dr = icmp eq ptr %i.dn, %i.dq
  br i1 %i.dr, label %bb.aq, label %Py_XDECREF.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ds = call fastcc i32 @add_getset(ptr noundef nonnull %0, ptr noundef nonnull @WCharArray_getsets)
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %PyStgInfo_Init.exit.thread, label %Py_XDECREF.exit

PyStgInfo_Init.exit.thread:                       ; preds = %bb.y, %bb.x, %bb.v, %bb.aq, %bb.ao, %PyStgInfo_FromType.exit, %bb.r, %bb.p, %bb.q, %bb.a, %bb.ak, %bb.af, %bb.ad, %bb.t, %Py_DECREF.exit50, %Py_DECREF.exit52, %bb.c
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %.not.i59 = icmp eq ptr %i.du, null
  br i1 %.not.i59, label %Py_XDECREF.exit, label %bb.ar

bb.ar:                                            ; preds = %PyStgInfo_Init.exit.thread
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !28 ; 2 uses
  %.not.i.i60 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i60, label %bb.as, label %Py_XDECREF.exit

bb.as:                                            ; preds = %bb.ar
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !28
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.at, label %Py_XDECREF.exit

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.du) #18
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.at, %bb.as, %bb.ar, %PyStgInfo_Init.exit.thread, %bb.ao, %bb.aq, %bb.ap
  %.0 = phi i32 [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ -1, %PyStgInfo_Init.exit.thread ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @PyCArrayType_paramfunc(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyCArgObject_new(ptr noundef %0) #18 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 24
  store i8 80, ptr %i.c, align 8, !tbaa !169
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr @ffi_type_pointer, ptr %i.d, align 16, !tbaa !170
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !51
  %i.g = getelementptr i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.g, align 16, !tbaa !28
  %i.h = load i32, ptr %1, align 16, !tbaa !28    ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %1, align 16, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.k = getelementptr i8, ptr %i.a, i64 64
  store ptr %1, ptr %i.k, align 16, !tbaa !143
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_Py_NewRef.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_getset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.c = load ptr, ptr %1, align 8, !tbaa !185
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %Py_DECREF.exit
  %i.d = getelementptr i8, ptr %.01316, i64 40    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !187

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01316 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.f = tail call ptr @PyDescr_NewGetSet(ptr noundef %0, ptr noundef nonnull %.01316) #18 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.01316, align 8, !tbaa !185
  %i.i = tail call i32 @PyDict_SetItemString(ptr noundef %i.b, ptr noundef %i.h, ptr noundef nonnull %i.f) #18
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  br i1 %i.j, label %bb.b, label %.critedge

.critedge:                                        ; preds = %Py_DECREF.exit, %bb.b, %.lr.ph, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %.lr.ph ], [ -1, %Py_DECREF.exit ]
  ret i32 %.2
}

declare ptr @PyDescr_NewGetSet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_PyCArrayType_Type_raw_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 16, !tbaa !51
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val2 = load i64, ptr %i.b, align 8, !tbaa !50
  %i.c = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %.val, i64 noundef %.val2) #18
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_ctypes_PyCArrayType_Type_raw_set(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.123) #18
  br label %_ctypes_PyCArrayType_Type_raw_set_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @PyObject_GetBuffer(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 0) #18
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ctypes_PyCArrayType_Type_raw_set_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp sgt i64 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.124) #18
  call void @PyBuffer_Release(ptr noundef nonnull %3) #18
  br label %_ctypes_PyCArrayType_Type_raw_set_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %3, align 8, !tbaa !124
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.k, i64 %i.f, i1 false)
  call void @PyBuffer_Release(ptr noundef nonnull %3) #18
  br label %_ctypes_PyCArrayType_Type_raw_set_impl.exit

_ctypes_PyCArrayType_Type_raw_set_impl.exit:      ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %bb.f ], [ -1, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_PyCArrayType_Type_value_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ctypes_PyCArrayType_Type_value_get_impl.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.09.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.078.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.09.i, align 1, !tbaa !28
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_ctypes_PyCArrayType_Type_value_get_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %.09.i, i64 1
  %i.i = add nuw nsw i64 %.078.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i, label %_ctypes_PyCArrayType_Type_value_get_impl.exit, label %.lr.ph.i, !llvm.loop !188

_ctypes_PyCArrayType_Type_value_get_impl.exit:    ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.07.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ], [ %.078.i, %.lr.ph.i ]
  %i.j = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %.07.lcssa.i) #18
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_ctypes_PyCArrayType_Type_value_set(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.125) #18
  br label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val22.i = load ptr, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %i.d = getelementptr i8, ptr %.val22.i, i64 168
  %.val23.i = load i64, ptr %i.d, align 8, !tbaa !17
  %i.e = and i64 %.val23.i, 134217728
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.g = getelementptr i8, ptr %.val22.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.126, ptr noundef %i.h) #18 ; 0 uses
  br label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %Py_INCREF.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %1, align 8, !tbaa !28
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.f, %bb.e
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val24.i = load i64, ptr %i.m, align 8, !tbaa !102 ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50
  %i.p = icmp sgt i64 %.val24.i, %i.o
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %Py_INCREF.exit.i
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.124) #18
  %i.r = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not.i19.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i19.i, label %bb.h, label %_ctypes_PyCArrayType_Type_value_set_impl.exit

end_hunk_5
begin_hunk_6_@PyCSimpleType_init:bb.a
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !28
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.an, label %Py_DECREF.exit109

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.dh) #18
  br label %Py_DECREF.exit109

Py_DECREF.exit109:                                ; preds = %bb.al, %bb.am, %bb.an
  %i.dl = load i32, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %.not.i106 = icmp sgt i32 %i.dl, -1
  br i1 %.not.i106, label %bb.ao, label %Py_DECREF.exit107

bb.ao:                                            ; preds = %Py_DECREF.exit109
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.cw, align 8, !tbaa !28
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ap, label %Py_DECREF.exit107

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.cw) #18
  br label %Py_DECREF.exit107

Py_DECREF.exit107:                                ; preds = %Py_DECREF.exit109, %bb.ao, %bb.ap
  %.not128 = icmp eq i32 %i.dg, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %.not128, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ag, %bb.ad, %Py_DECREF.exit107, %bb.ac
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.do = getelementptr i8, ptr %.val.i, i64 80
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56
  %i.dq = icmp eq ptr %.val, %i.dp
  br i1 %i.dq, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr i8, ptr %i.w, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !196
  %.not100 = icmp eq ptr %i.ds, null
  br i1 %.not100, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = getelementptr i8, ptr %i.w, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !197
  %.not101 = icmp eq ptr %i.du, null
  br i1 %.not101, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.dw = call fastcc ptr @CreateSwappedType(ptr noundef nonnull %.val.i, ptr noundef %.val, ptr noundef %1, ptr noundef %2, ptr noundef %i.dv, ptr noundef %i.w) ; 9 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call fastcc void @PyStgInfo_FromType(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.dw, ptr noundef %i.d)
  %i.dy = call i32 @PyObject_SetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.139, ptr noundef nonnull %i.dw) #18 ; 0 uses
  %i.dz = call i32 @PyObject_SetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.140, ptr noundef nonnull %0) #18 ; 0 uses
  %i.ea = call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.dw, ptr noundef nonnull @.str.140, ptr noundef nonnull %0) #18 ; 0 uses
  %i.eb = call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.dw, ptr noundef nonnull @.str.139, ptr noundef nonnull %i.dw) #18 ; 0 uses
  %i.ec = load ptr, ptr %i.cb, align 8, !tbaa !39
  %i.ed = getelementptr i8, ptr %i.ec, i64 1
  %i.ee = call fastcc ptr @_ctypes_alloc_format_string(ptr noundef nonnull @.str.141, ptr noundef %i.ed)
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.eg = getelementptr i8, ptr %i.ef, i64 144
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !39
  %i.eh = load i32, ptr %i.dw, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i, label %bb.av, label %Py_DECREF.exit

bb.av:                                            ; preds = %bb.au
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !28
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.aw, label %Py_DECREF.exit

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dw) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.au, %bb.av, %bb.aw
  %i.ek = call ptr @PyErr_Occurred() #18
  %.not102 = icmp eq ptr %i.ek, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br i1 %.not102, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %Py_DECREF.exit, %bb.as, %bb.ar, %bb.aq
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.g, %bb.f, %bb.e, %PyStgInfo_Init.exit.thread, %Py_DECREF.exit111, %bb.at, %bb.ah, %bb.b, %bb.a, %Py_DECREF.exit107, %Py_DECREF.exit, %bb.ax
  %.5 = phi i32 [ -1, %Py_DECREF.exit107 ], [ -1, %bb.a ], [ -1, %Py_DECREF.exit111 ], [ -1, %bb.g ], [ 0, %bb.ax ], [ -1, %Py_DECREF.exit ], [ -1, %bb.b ], [ -1, %bb.ah ], [ -1, %bb.at ], [ -1, %PyStgInfo_Init.exit.thread ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCSimpleType_from_param(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @PyCSimpleType_from_param._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = call fastcc ptr @PyCSimpleType_from_param_impl(ptr noundef %0, ptr noundef %1, ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi ptr [ %i.h, %.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PyCSimpleType_from_param_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #18
  switch i32 %i.b, label %bb.b [
    i32 -1, label %_Py_NewRef.exit
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %2, align 8, !tbaa !28
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !72 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.val, i64 40  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.i) #18
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.l = tail call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.k) #18 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i.i, label %bb.f, label %PyStgInfo_FromType.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.1) #18
  br label %_Py_NewRef.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.l, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = tail call ptr @PyUnicode_AsUTF8(ptr noundef %i.p) #18 ; 2 uses
  %i.r = tail call ptr @_ctypes_get_fielddesc(ptr noundef %i.q) #18 ; 2 uses
  %i.s = tail call ptr @PyCArgObject_new(ptr noundef nonnull %.val.val) #18 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %PyStgInfo_FromType.exit
  %i.u = load i8, ptr %i.q, align 1, !tbaa !28
  %i.v = getelementptr i8, ptr %i.s, i64 24
  store i8 %i.u, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr i8, ptr %i.r, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !172
  %i.y = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.y, align 16, !tbaa !170
  %i.z = getelementptr i8, ptr %i.r, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.ab = getelementptr i8, ptr %i.s, i64 32
  %i.ac = getelementptr i8, ptr %i.l, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = tail call ptr %i.aa(ptr noundef %i.ab, ptr noundef %2, i64 noundef %i.ad) #18 ; 2 uses
  %i.af = getelementptr i8, ptr %i.s, i64 64
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !143
  %.not36 = icmp eq ptr %i.ae, null
  br i1 %.not36, label %bb.h, label %_Py_NewRef.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @PyErr_GetRaisedException() #18 ; 5 uses
  %i.ah = load i32, ptr %i.s, align 16, !tbaa !28 ; 2 uses
  %.not.i42 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i42, label %bb.i, label %Py_DECREF.exit43

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.s, align 16, !tbaa !28
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %Py_DECREF.exit43

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #18
  br label %Py_DECREF.exit43

Py_DECREF.exit43:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.ak = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #18
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit43
  call fastcc void @Py_XDECREF(ptr noundef %i.ag)
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %Py_DECREF.exit43
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not37 = icmp eq ptr %i.am, null
  br i1 %.not37, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call fastcc i32 @_Py_EnterRecursiveCall()
  %.not39 = icmp eq i32 %i.an, 0
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  br i1 %.not39, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %.not.i40 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i40, label %bb.o, label %Py_DECREF.exit41

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !28
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %Py_DECREF.exit41

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #18
  br label %Py_DECREF.exit41

Py_DECREF.exit41:                                 ; preds = %bb.n, %bb.o, %bb.p
  call fastcc void @Py_XDECREF(ptr noundef %i.ag)
  br label %_Py_NewRef.exit

bb.q:                                             ; preds = %bb.m
  %i.as = call fastcc ptr @PyCSimpleType_from_param_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ao)
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !28
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.r, %bb.s
  call fastcc void @Py_XDECREF(ptr noundef %i.ag)
  br label %_Py_NewRef.exit

bb.t:                                             ; preds = %bb.l
  %.not38 = icmp eq ptr %i.ag, null
  br i1 %.not38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @PyErr_SetRaisedException(ptr noundef nonnull %i.ag) #18
  br label %_Py_NewRef.exit

bb.v:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.135) #18
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %PyStgInfo_FromType.exit, %bb.g, %bb.u, %bb.v, %Py_DECREF.exit, %Py_DECREF.exit41, %bb.k, %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ %2, %bb.c ], [ null, %bb.a ], [ %2, %bb.b ], [ null, %bb.f ], [ %i.s, %bb.g ], [ null, %PyStgInfo_FromType.exit ], [ null, %bb.k ], [ null, %Py_DECREF.exit41 ], [ %i.as, %Py_DECREF.exit ], [ null, %bb.v ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.2
}

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #2

declare ptr @_ctypes_get_simple_type_chars() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_ctypes_alloc_format_string_for_type(i8 noundef signext %0) unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.d [
    i8 108, label %bb.b
    i8 76, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i8 [ 113, %bb.b ], [ 81, %bb.c ], [ %0, %bb.a ]
  %i.a = tail call ptr @PyMem_Malloc(i64 noundef 3) #18 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = tail call ptr @PyErr_NoMemory() #18      ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i8 60, ptr %i.a, align 1, !tbaa !28
  %i.d = getelementptr i8, ptr %i.a, i64 1
  store i8 %.0, ptr %i.d, align 1, !tbaa !28
  %i.e = getelementptr i8, ptr %i.a, i64 2
  store i8 0, ptr %i.e, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCSimpleType_paramfunc(ptr noundef %0, ptr noundef %1) #0 {
PyStgInfo_FromObject.exit:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call i32 @PyObject_IsInstance(ptr noundef %.val, ptr noundef %i.c) #18 ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = tail call ptr @PyObject_GetTypeData(ptr noundef %.val, ptr noundef %i.e) #18
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = tail call ptr @PyUnicode_AsUTF8(ptr noundef %i.h) #18 ; 2 uses
  %i.j = tail call ptr @_ctypes_get_fielddesc(ptr noundef %i.i) #18
  %i.k = tail call ptr @PyCArgObject_new(ptr noundef nonnull %0) #18 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.a

bb.a:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.m = load i8, ptr %i.i, align 1, !tbaa !28
  %i.n = getelementptr i8, ptr %i.k, i64 24
  store i8 %i.m, ptr %i.n, align 8, !tbaa !169
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.q = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.p, ptr %i.q, align 16, !tbaa !170
  %i.r = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %1, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  %i.u = getelementptr i8, ptr %i.k, i64 64
  store ptr %1, ptr %i.u, align 16, !tbaa !143
  %i.v = getelementptr i8, ptr %i.k, i64 32
  %i.w = getelementptr i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !51
  %i.y = getelementptr i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.v, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit, %_Py_NewRef.exit
  ret ptr %i.k
}

declare ptr @PyDescr_NewClassMethod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare void @PyUnicode_InternInPlace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CreateSwappedType(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val53 = load i64, ptr %i.c, align 8, !tbaa !102
  %i.d = tail call ptr @PyTuple_New(i64 noundef %.val53) #18 ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit50, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
end_hunk_6
begin_hunk_7_@CreateSwappedType:bb.a
  %.val = phi i64 [ %.val59, %.lr.ph ], [ %.val.pre, %bb.g ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.l, i64 %.04158
  store ptr %i.o, ptr %i.s, align 8, !tbaa !32
  %i.t = add nuw nsw i64 %.04158, 1               ; 2 uses
  %i.u = icmp slt i64 %i.t, %.val
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %Py_INCREF.exit, %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 312), align 8, !tbaa !200
  %i.w = tail call ptr %i.v(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %3) #18 ; 8 uses
  %i.x = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i47 = icmp sgt i32 %i.x, -1
  br i1 %.not.i47, label %bb.h, label %Py_DECREF.exit48

bb.h:                                             ; preds = %._crit_edge
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !28
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %Py_DECREF.exit48

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #18
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %._crit_edge, %bb.h, %bb.i
  %i.aa = icmp eq ptr %i.w, null
  br i1 %i.aa, label %Py_DECREF.exit50, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit48
  %i.ab = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %i.w, ptr noundef %i.ac) #18
  %.not.i54 = icmp eq i32 %i.ad, 0
  br i1 %.not.i54, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.af = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %i.w, ptr noundef %i.ae) #18 ; 10 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !42
  %.not16.i = icmp eq i32 %i.ag, 0
  br i1 %.not16.i, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ai = tail call ptr @PyType_GetModule(ptr noundef %i.ah) #18 ; 4 uses
  %.not17.i = icmp eq ptr %i.ai, null
  br i1 %.not17.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.af, i64 120
  store ptr null, ptr %i.aj, align 8, !tbaa !96
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add nuw i32 %i.ak, 1
  store i32 %i.am, ptr %i.ai, align 8, !tbaa !28
  br label %bb.r

.sink.split:                                      ; preds = %bb.k, %bb.j
  %.str.88.sink = phi ptr [ @.str.88, %bb.j ], [ @.str.89, %bb.k ]
  %i.an = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.ao = getelementptr i8, ptr %i.w, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.an, ptr noundef nonnull %.str.88.sink, ptr noundef %i.ap) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit50

bb.p:                                             ; preds = %bb.o
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.w, align 8, !tbaa !28
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %Py_DECREF.exit50

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #18
  br label %Py_DECREF.exit50

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.au = getelementptr i8, ptr %i.af, i64 128
  store ptr %i.ai, ptr %i.au, align 8, !tbaa !97
  store i32 1, ptr %i.af, align 8, !tbaa !42
  %i.av = getelementptr i8, ptr %i.af, i64 32
  %i.aw = getelementptr i8, ptr %5, i64 8         ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !176
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !172 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !174
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr i8, ptr %i.af, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !175
  %i.bd = getelementptr i8, ptr %i.af, i64 24
  store i64 0, ptr %i.bd, align 8, !tbaa !45
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !192
  %i.bf = getelementptr i8, ptr %i.af, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !49
  %i.bg = getelementptr i8, ptr %5, i64 32
  %i.bh = getelementptr i8, ptr %i.af, i64 64
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !55
  store <2 x ptr> %i.bi, ptr %i.bh, align 8, !tbaa !55
  %i.bj = load i32, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, -1073741825
  br i1 %i.bk, label %_Py_NewRef.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = add nuw i32 %i.bj, 1
  store i32 %i.bl, ptr %4, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.r, %bb.s
  %i.bm = getelementptr i8, ptr %i.af, i64 56
  store ptr %4, ptr %i.bm, align 8, !tbaa !68
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.q, %bb.p, %bb.o, %bb.e, %bb.d, %bb.c, %_Py_NewRef.exit, %Py_DECREF.exit48, %bb.a
  %.1 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ null, %Py_DECREF.exit48 ], [ %i.w, %_Py_NewRef.exit ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.q ]
  ret ptr %.1
}

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @c_char_p_from_param(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @c_char_p_from_param._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = call fastcc ptr @c_char_p_from_param_impl(ptr noundef %0, ptr noundef %1, ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi ptr [ %i.h, %.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @c_char_p_from_param_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.b, label %Py_DECREF.exit64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.d, i64 888
  %.val74 = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr i8, ptr %.val74, i64 24
  %.val74.val = load ptr, ptr %i.f, align 8, !tbaa !72 ; 6 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 6 uses
  %.val67 = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %.val67, i64 168
  %.val68 = load i64, ptr %i.h, align 8, !tbaa !17
  %i.i = and i64 %.val68, 134217728
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.143) #18
  %i.k = tail call ptr @PyCArgObject_new(ptr noundef %.val74.val) #18 ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_DECREF.exit64, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 16
  store ptr @ffi_type_pointer, ptr %i.m, align 16, !tbaa !170
  %i.n = getelementptr i8, ptr %i.k, i64 24
  store i8 122, ptr %i.n, align 8, !tbaa !169
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !198
  %i.q = getelementptr i8, ptr %i.k, i64 32
  %i.r = tail call ptr %i.p(ptr noundef %i.q, ptr noundef %2, i64 noundef 0) #18 ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 64
  store ptr %i.r, ptr %i.s, align 16, !tbaa !143
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.e, label %Py_DECREF.exit64

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.k, align 16, !tbaa !28  ; 2 uses
  %.not.i63 = icmp sgt i32 %i.u, -1
  br i1 %.not.i63, label %bb.f, label %Py_DECREF.exit64

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.k, align 16, !tbaa !28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %Py_DECREF.exit64

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #18
  br label %Py_DECREF.exit64

bb.h:                                             ; preds = %bb.b
  %i.x = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #18
  switch i32 %i.x, label %bb.i [
    i32 -1, label %Py_DECREF.exit64
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %Py_DECREF.exit64, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit64

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val74.val, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  %.val71 = load ptr, ptr %i.g, align 8, !tbaa !15 ; 3 uses
  %.not.i75 = icmp eq ptr %.val71, %i.ac
  br i1 %.not.i75, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.k
  %i.ad = tail call i32 @PyType_IsSubtype(ptr noundef %.val71, ptr noundef %i.ac) #18
  %.not103 = icmp eq i32 %i.ad, 0
  %.val73.pre106 = load ptr, ptr %i.g, align 8, !tbaa !15 ; 4 uses
  br i1 %.not103, label %bb.l, label %PyObject_TypeCheck.exit.thread

bb.l:                                             ; preds = %PyObject_TypeCheck.exit
  %i.ae = getelementptr i8, ptr %.val74.val, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %.not.i76 = icmp eq ptr %.val73.pre106, %i.af
  br i1 %.not.i76, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit77

PyObject_TypeCheck.exit77:                        ; preds = %bb.l
  %i.ag = tail call i32 @PyType_IsSubtype(ptr noundef %.val73.pre106, ptr noundef %i.af) #18
  %.not104 = icmp eq i32 %i.ag, 0
  br i1 %.not104, label %_Py_NewRef.exit81.thread, label %PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge

PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge: ; preds = %PyObject_TypeCheck.exit77
  %.val73.pre = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge, %bb.l, %bb.k, %PyObject_TypeCheck.exit
  %.val73 = phi ptr [ %.val73.pre, %PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge ], [ %.val73.pre106, %bb.l ], [ %.val71, %bb.k ], [ %.val73.pre106, %PyObject_TypeCheck.exit ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.val74.val, i64 40 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = tail call i32 @PyObject_IsInstance(ptr noundef %.val73, ptr noundef %i.ai) #18
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_Py_NewRef.exit81.thread, label %bb.m

bb.m:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.al = tail call ptr @PyObject_GetTypeData(ptr noundef %.val73, ptr noundef %i.ak) #18 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.am, 0
  br i1 %.not8.i.i, label %_Py_NewRef.exit81.thread, label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.al, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68 ; 3 uses
  %.not55 = icmp eq ptr %i.ao, null
  br i1 %.not55, label %_Py_NewRef.exit81.thread, label %bb.n

bb.n:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aq = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %i.ao, ptr noundef %i.ap) #18
  %.not.i.i78 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i78, label %_Py_NewRef.exit81.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.as = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %i.ao, ptr noundef %i.ar) #18 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  %.not8.i.i79 = icmp eq i32 %i.at, 0
  br i1 %.not8.i.i79, label %_Py_NewRef.exit81.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.o
  %i.au = getelementptr i8, ptr %i.as, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.aw = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.119) #18
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !198
  %i.az = icmp eq ptr %i.av, %i.ay
  br i1 %i.az, label %bb.p, label %_Py_NewRef.exit81.thread

bb.p:                                             ; preds = %PyStgInfo_FromType.exit
  %i.ba = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, -1073741825
  br i1 %i.bb, label %Py_DECREF.exit64, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add nuw i32 %i.ba, 1
  store i32 %i.bc, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit64

_Py_NewRef.exit81.thread:                         ; preds = %bb.m, %PyObject_TypeCheck.exit.thread, %bb.o, %bb.n, %PyStgInfo_FromObject.exit, %PyStgInfo_FromType.exit, %PyObject_TypeCheck.exit77
  %i.bd = getelementptr i8, ptr %.val74.val, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !79
  %.val69 = load ptr, ptr %i.g, align 8, !tbaa !15
  %.not105 = icmp eq ptr %.val69, %i.be
  br i1 %.not105, label %bb.r, label %_Py_NewRef.exit86.thread

bb.r:                                             ; preds = %_Py_NewRef.exit81.thread
  %i.bf = getelementptr i8, ptr %2, i64 64
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !143
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val72 = load ptr, ptr %i.bh, align 8, !tbaa !15 ; 2 uses
  %i.bi = getelementptr i8, ptr %.val74.val, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = tail call i32 @PyObject_IsInstance(ptr noundef %.val72, ptr noundef %i.bj) #18
  %.not.i.i82 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i82, label %_Py_NewRef.exit86.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bm = tail call ptr @PyObject_GetTypeData(ptr noundef %.val72, ptr noundef %i.bl) #18 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !42
  %.not8.i.i83 = icmp eq i32 %i.bn, 0
  br i1 %.not8.i.i83, label %_Py_NewRef.exit86.thread, label %PyStgInfo_FromObject.exit85

PyStgInfo_FromObject.exit85:                      ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %i.bm, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.119) #18
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !198
  %i.bt = icmp eq ptr %i.bp, %i.bs
  br i1 %i.bt, label %bb.t, label %_Py_NewRef.exit86.thread

bb.t:                                             ; preds = %PyStgInfo_FromObject.exit85
  %i.bu = load i32, ptr %2, align 16, !tbaa !28   ; 2 uses
  %i.bv = icmp ugt i32 %i.bu, -1073741825
  br i1 %i.bv, label %Py_DECREF.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nuw i32 %i.bu, 1
  store i32 %i.bw, ptr %2, align 16, !tbaa !28
  br label %Py_DECREF.exit64

_Py_NewRef.exit86.thread:                         ; preds = %bb.s, %bb.r, %PyStgInfo_FromObject.exit85, %_Py_NewRef.exit81.thread
  %i.bx = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #18
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %Py_DECREF.exit64, label %bb.v

bb.v:                                             ; preds = %_Py_NewRef.exit86.thread
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not59 = icmp eq ptr %i.bz, null
  br i1 %.not59, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = call fastcc i32 @_Py_EnterRecursiveCall()
  %.not60 = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  br i1 %.not60, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.cc, -1
  br i1 %.not.i61, label %bb.y, label %Py_DECREF.exit64

bb.y:                                             ; preds = %bb.x
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !28
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.z, label %Py_DECREF.exit64

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #18
  br label %Py_DECREF.exit64

bb.aa:                                            ; preds = %bb.w
  %i.cf = call fastcc ptr @c_char_p_from_param_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.cb) ; 3 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ch, -1
  br i1 %.not.i, label %bb.ab, label %Py_DECREF.exit64

bb.ab:                                            ; preds = %bb.aa
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !28
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ac, label %Py_DECREF.exit64

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #18
  br label %Py_DECREF.exit64

bb.ad:                                            ; preds = %bb.v
  %i.ck = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.cl = getelementptr i8, ptr %.val, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.cn = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ck, ptr noundef nonnull @.str.144, ptr noundef %i.cm) #18 ; 0 uses
  br label %Py_DECREF.exit64

Py_DECREF.exit64:                                 ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.t, %bb.u, %bb.p, %bb.q, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.ad, %bb.d, %bb.c, %bb.h, %_Py_NewRef.exit86.thread, %bb.a
  %.6 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ %2, %bb.j ], [ %i.k, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ %2, %bb.u ], [ null, %bb.z ], [ null, %bb.ad ], [ %2, %bb.p ], [ null, %bb.c ], [ null, %_Py_NewRef.exit86.thread ], [ null, %bb.e ], [ null, %bb.f ], [ %2, %bb.i ], [ %2, %bb.q ], [ %2, %bb.t ], [ null, %bb.x ], [ null, %bb.y ], [ %i.cf, %bb.aa ], [ %i.cf, %bb.ab ], [ %i.cf, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define internal ptr @c_wchar_p_from_param(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @c_wchar_p_from_param._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = call fastcc ptr @c_wchar_p_from_param_impl(ptr noundef %0, ptr noundef %1, ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi ptr [ %i.h, %.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @c_wchar_p_from_param_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.b, label %Py_DECREF.exit64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.d, i64 888
  %.val74 = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr i8, ptr %.val74, i64 24
  %.val74.val = load ptr, ptr %i.f, align 8, !tbaa !72 ; 6 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 6 uses
  %.val67 = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %.val67, i64 168
  %.val68 = load i64, ptr %i.h, align 8, !tbaa !17
  %i.i = and i64 %.val68, 268435456
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.146) #18
  %i.k = tail call ptr @PyCArgObject_new(ptr noundef %.val74.val) #18 ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_DECREF.exit64, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 16
  store ptr @ffi_type_pointer, ptr %i.m, align 16, !tbaa !170
  %i.n = getelementptr i8, ptr %i.k, i64 24
  store i8 90, ptr %i.n, align 8, !tbaa !169
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !198
  %i.q = getelementptr i8, ptr %i.k, i64 32
  %i.r = tail call ptr %i.p(ptr noundef %i.q, ptr noundef %2, i64 noundef 0) #18 ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 64
  store ptr %i.r, ptr %i.s, align 16, !tbaa !143
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.e, label %Py_DECREF.exit64

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.k, align 16, !tbaa !28  ; 2 uses
  %.not.i63 = icmp sgt i32 %i.u, -1
  br i1 %.not.i63, label %bb.f, label %Py_DECREF.exit64

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.k, align 16, !tbaa !28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %Py_DECREF.exit64

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #18
  br label %Py_DECREF.exit64

bb.h:                                             ; preds = %bb.b
  %i.x = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #18
  switch i32 %i.x, label %bb.i [
    i32 -1, label %Py_DECREF.exit64
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %Py_DECREF.exit64, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit64

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val74.val, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  %.val71 = load ptr, ptr %i.g, align 8, !tbaa !15 ; 3 uses
  %.not.i75 = icmp eq ptr %.val71, %i.ac
  br i1 %.not.i75, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.k
  %i.ad = tail call i32 @PyType_IsSubtype(ptr noundef %.val71, ptr noundef %i.ac) #18
  %.not103 = icmp eq i32 %i.ad, 0
  %.val73.pre106 = load ptr, ptr %i.g, align 8, !tbaa !15 ; 4 uses
  br i1 %.not103, label %bb.l, label %PyObject_TypeCheck.exit.thread

bb.l:                                             ; preds = %PyObject_TypeCheck.exit
  %i.ae = getelementptr i8, ptr %.val74.val, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %.not.i76 = icmp eq ptr %.val73.pre106, %i.af
  br i1 %.not.i76, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit77

PyObject_TypeCheck.exit77:                        ; preds = %bb.l
  %i.ag = tail call i32 @PyType_IsSubtype(ptr noundef %.val73.pre106, ptr noundef %i.af) #18
  %.not104 = icmp eq i32 %i.ag, 0
  br i1 %.not104, label %_Py_NewRef.exit81.thread, label %PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge

PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge: ; preds = %PyObject_TypeCheck.exit77
  %.val73.pre = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge, %bb.l, %bb.k, %PyObject_TypeCheck.exit
  %.val73 = phi ptr [ %.val73.pre, %PyObject_TypeCheck.exit77.PyObject_TypeCheck.exit.thread_crit_edge ], [ %.val73.pre106, %bb.l ], [ %.val71, %bb.k ], [ %.val73.pre106, %PyObject_TypeCheck.exit ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.val74.val, i64 40 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = tail call i32 @PyObject_IsInstance(ptr noundef %.val73, ptr noundef %i.ai) #18
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_Py_NewRef.exit81.thread, label %bb.m

bb.m:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.al = tail call ptr @PyObject_GetTypeData(ptr noundef %.val73, ptr noundef %i.ak) #18 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.am, 0
  br i1 %.not8.i.i, label %_Py_NewRef.exit81.thread, label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.al, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68 ; 3 uses
  %.not55 = icmp eq ptr %i.ao, null
  br i1 %.not55, label %_Py_NewRef.exit81.thread, label %bb.n

bb.n:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aq = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %i.ao, ptr noundef %i.ap) #18
  %.not.i.i78 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i78, label %_Py_NewRef.exit81.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.as = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %i.ao, ptr noundef %i.ar) #18 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  %.not8.i.i79 = icmp eq i32 %i.at, 0
  br i1 %.not8.i.i79, label %_Py_NewRef.exit81.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.o
  %i.au = getelementptr i8, ptr %i.as, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.aw = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.120) #18
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !198
  %i.az = icmp eq ptr %i.av, %i.ay
  br i1 %i.az, label %bb.p, label %_Py_NewRef.exit81.thread

bb.p:                                             ; preds = %PyStgInfo_FromType.exit
  %i.ba = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, -1073741825
  br i1 %i.bb, label %Py_DECREF.exit64, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add nuw i32 %i.ba, 1
  store i32 %i.bc, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit64

_Py_NewRef.exit81.thread:                         ; preds = %bb.m, %PyObject_TypeCheck.exit.thread, %bb.o, %bb.n, %PyStgInfo_FromObject.exit, %PyStgInfo_FromType.exit, %PyObject_TypeCheck.exit77
  %i.bd = getelementptr i8, ptr %.val74.val, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !79
  %.val69 = load ptr, ptr %i.g, align 8, !tbaa !15
  %.not105 = icmp eq ptr %.val69, %i.be
  br i1 %.not105, label %bb.r, label %_Py_NewRef.exit86.thread

bb.r:                                             ; preds = %_Py_NewRef.exit81.thread
  %i.bf = getelementptr i8, ptr %2, i64 64
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !143
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val72 = load ptr, ptr %i.bh, align 8, !tbaa !15 ; 2 uses
  %i.bi = getelementptr i8, ptr %.val74.val, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = tail call i32 @PyObject_IsInstance(ptr noundef %.val72, ptr noundef %i.bj) #18
  %.not.i.i82 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i82, label %_Py_NewRef.exit86.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bm = tail call ptr @PyObject_GetTypeData(ptr noundef %.val72, ptr noundef %i.bl) #18 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !42
  %.not8.i.i83 = icmp eq i32 %i.bn, 0
  br i1 %.not8.i.i83, label %_Py_NewRef.exit86.thread, label %PyStgInfo_FromObject.exit85

PyStgInfo_FromObject.exit85:                      ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %i.bm, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.120) #18
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !198
  %i.bt = icmp eq ptr %i.bp, %i.bs
  br i1 %i.bt, label %bb.t, label %_Py_NewRef.exit86.thread

bb.t:                                             ; preds = %PyStgInfo_FromObject.exit85
  %i.bu = load i32, ptr %2, align 16, !tbaa !28   ; 2 uses
  %i.bv = icmp ugt i32 %i.bu, -1073741825
  br i1 %i.bv, label %Py_DECREF.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nuw i32 %i.bu, 1
  store i32 %i.bw, ptr %2, align 16, !tbaa !28
  br label %Py_DECREF.exit64

_Py_NewRef.exit86.thread:                         ; preds = %bb.s, %bb.r, %PyStgInfo_FromObject.exit85, %_Py_NewRef.exit81.thread
  %i.bx = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #18
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %Py_DECREF.exit64, label %bb.v

bb.v:                                             ; preds = %_Py_NewRef.exit86.thread
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not59 = icmp eq ptr %i.bz, null
  br i1 %.not59, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = call fastcc i32 @_Py_EnterRecursiveCall()
  %.not60 = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  br i1 %.not60, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.cc, -1
  br i1 %.not.i61, label %bb.y, label %Py_DECREF.exit64

bb.y:                                             ; preds = %bb.x
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !28
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.z, label %Py_DECREF.exit64

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #18
  br label %Py_DECREF.exit64

bb.aa:                                            ; preds = %bb.w
  %i.cf = call fastcc ptr @c_wchar_p_from_param_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.cb) ; 3 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.ch, -1
  br i1 %.not.i, label %bb.ab, label %Py_DECREF.exit64

bb.ab:                                            ; preds = %bb.aa
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !28
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ac, label %Py_DECREF.exit64

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #18
  br label %Py_DECREF.exit64

bb.ad:                                            ; preds = %bb.v
  %i.ck = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.cl = getelementptr i8, ptr %.val, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.cn = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ck, ptr noundef nonnull @.str.147, ptr noundef %i.cm) #18 ; 0 uses
  br label %Py_DECREF.exit64

Py_DECREF.exit64:                                 ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.t, %bb.u, %bb.p, %bb.q, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.ad, %bb.d, %bb.c, %bb.h, %_Py_NewRef.exit86.thread, %bb.a
  %.6 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ %2, %bb.j ], [ %i.k, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ %2, %bb.u ], [ null, %bb.z ], [ null, %bb.ad ], [ %2, %bb.p ], [ null, %bb.c ], [ null, %_Py_NewRef.exit86.thread ], [ null, %bb.e ], [ null, %bb.f ], [ %2, %bb.i ], [ %2, %bb.q ], [ %2, %bb.t ], [ null, %bb.x ], [ null, %bb.y ], [ %i.cf, %bb.aa ], [ %i.cf, %bb.ab ], [ %i.cf, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define internal ptr @c_void_p_from_param(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @c_void_p_from_param._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = call fastcc ptr @c_void_p_from_param_impl(ptr noundef %0, ptr noundef %1, ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi ptr [ %i.h, %.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @c_void_p_from_param_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.c, label %Py_DECREF.exit118, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr i8, ptr %i.e, i64 888
  %.val137 = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr i8, ptr %.val137, i64 24
  %.val137.val = load ptr, ptr %i.g, align 8, !tbaa !72 ; 11 uses
  %i.h = getelementptr i8, ptr %2, i64 8          ; 7 uses
  %.val126 = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr i8, ptr %.val126, i64 168
  %.val130 = load i64, ptr %i.i, align 8, !tbaa !17 ; 3 uses
  %i.j = and i64 %.val130, 16777216
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.107) #18
  %i.l = tail call ptr @PyCArgObject_new(ptr noundef %.val137.val) #18 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Py_DECREF.exit118, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.l, i64 16
  store ptr @ffi_type_pointer, ptr %i.n, align 16, !tbaa !170
  %i.o = getelementptr i8, ptr %i.l, i64 24
  store i8 80, ptr %i.o, align 8, !tbaa !169
  %i.p = getelementptr i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198
  %i.r = getelementptr i8, ptr %i.l, i64 32
  %i.s = tail call ptr %i.q(ptr noundef %i.r, ptr noundef %2, i64 noundef 8) #18 ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 64
  store ptr %i.s, ptr %i.t, align 16, !tbaa !143
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.e, label %Py_DECREF.exit118

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.l, align 16, !tbaa !28  ; 2 uses
  %.not.i117 = icmp sgt i32 %i.v, -1
  br i1 %.not.i117, label %bb.f, label %Py_DECREF.exit118

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.l, align 16, !tbaa !28
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %Py_DECREF.exit118

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %Py_DECREF.exit118

bb.h:                                             ; preds = %bb.b
  %i.y = and i64 %.val130, 134217728
  %.not97 = icmp eq i64 %i.y, 0
  br i1 %.not97, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.143) #18
  %i.aa = tail call ptr @PyCArgObject_new(ptr noundef %.val137.val) #18 ; 9 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %Py_DECREF.exit118, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  store ptr @ffi_type_pointer, ptr %i.ac, align 16, !tbaa !170
  %i.ad = getelementptr i8, ptr %i.aa, i64 24
  store i8 122, ptr %i.ad, align 8, !tbaa !169
  %i.ae = getelementptr i8, ptr %i.z, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198
  %i.ag = getelementptr i8, ptr %i.aa, i64 32
  %i.ah = tail call ptr %i.af(ptr noundef %i.ag, ptr noundef %2, i64 noundef 0) #18 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.aa, i64 64
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !143
  %i.aj = icmp eq ptr %i.ah, null
  br i1 %i.aj, label %bb.k, label %Py_DECREF.exit118

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %i.aa, align 16, !tbaa !28 ; 2 uses
  %.not.i115 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i115, label %bb.l, label %Py_DECREF.exit118

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aa, align 16, !tbaa !28
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %Py_DECREF.exit118

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #18
  br label %Py_DECREF.exit118

bb.n:                                             ; preds = %bb.h
  %i.an = and i64 %.val130, 268435456
  %.not98 = icmp eq i64 %i.an, 0
  br i1 %.not98, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.146) #18
  %i.ap = tail call ptr @PyCArgObject_new(ptr noundef %.val137.val) #18 ; 9 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %Py_DECREF.exit118, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  store ptr @ffi_type_pointer, ptr %i.ar, align 16, !tbaa !170
  %i.as = getelementptr i8, ptr %i.ap, i64 24
  store i8 90, ptr %i.as, align 8, !tbaa !169
  %i.at = getelementptr i8, ptr %i.ao, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !198
  %i.av = getelementptr i8, ptr %i.ap, i64 32
  %i.aw = tail call ptr %i.au(ptr noundef %i.av, ptr noundef %2, i64 noundef 0) #18 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ap, i64 64
  store ptr %i.aw, ptr %i.ax, align 16, !tbaa !143
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %bb.q, label %Py_DECREF.exit118

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.ap, align 16, !tbaa !28 ; 2 uses
  %.not.i113 = icmp sgt i32 %i.az, -1
  br i1 %.not.i113, label %bb.r, label %Py_DECREF.exit118

bb.r:                                             ; preds = %bb.q
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.ap, align 16, !tbaa !28
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %Py_DECREF.exit118

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #18
  br label %Py_DECREF.exit118

bb.t:                                             ; preds = %bb.n
  %i.bc = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #18
  switch i32 %i.bc, label %bb.u [
    i32 -1, label %Py_DECREF.exit118
    i32 0, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bd = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.be = icmp ugt i32 %i.bd, -1073741825
  br i1 %i.be, label %Py_DECREF.exit118, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nuw i32 %i.bd, 1
  store i32 %i.bf, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit118

bb.w:                                             ; preds = %bb.t
  %i.bg = getelementptr i8, ptr %.val137.val, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67 ; 2 uses
  %.val135 = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.not.i138 = icmp eq ptr %.val135, %i.bh
  br i1 %.not.i138, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.w
  %i.bi = tail call i32 @PyType_IsSubtype(ptr noundef %.val135, ptr noundef %i.bh) #18
  %.not154 = icmp eq i32 %i.bi, 0
  br i1 %.not154, label %bb.x, label %PyObject_TypeCheck.exit.thread

bb.x:                                             ; preds = %PyObject_TypeCheck.exit
  %i.bj = getelementptr i8, ptr %.val137.val, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !88 ; 2 uses
  %.val134 = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.not.i139 = icmp eq ptr %.val134, %i.bk
  br i1 %.not.i139, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit140

PyObject_TypeCheck.exit140:                       ; preds = %bb.x
  %i.bl = tail call i32 @PyType_IsSubtype(ptr noundef %.val134, ptr noundef %i.bk) #18
  %.not155 = icmp eq i32 %i.bl, 0
  br i1 %.not155, label %bb.z, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.x, %bb.w, %PyObject_TypeCheck.exit140, %PyObject_TypeCheck.exit
  %i.bm = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, -1073741825
  br i1 %i.bn, label %Py_DECREF.exit118, label %bb.y

bb.y:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.bo = add nuw i32 %i.bm, 1
  store i32 %i.bo, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit118

bb.z:                                             ; preds = %PyObject_TypeCheck.exit140
  %i.bp = getelementptr i8, ptr %.val137.val, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !79
  %.val131 = load ptr, ptr %i.h, align 8, !tbaa !15 ; 3 uses
  %.not156 = icmp eq ptr %.val131, %i.bq
  br i1 %.not156, label %bb.aa, label %_Py_NewRef.exit142

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr i8, ptr %2, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !169
  %.not103 = icmp eq i8 %i.bs, 80
  br i1 %.not103, label %bb.ab, label %_Py_NewRef.exit142

bb.ab:                                            ; preds = %bb.aa
  %i.bt = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, -1073741825
  br i1 %i.bu, label %Py_DECREF.exit118, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add nuw i32 %i.bt, 1
  store i32 %i.bv, ptr %2, align 8, !tbaa !28
  br label %Py_DECREF.exit118

_Py_NewRef.exit142:                               ; preds = %bb.aa, %bb.z
  %i.bw = getelementptr i8, ptr %.val137.val, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !89 ; 2 uses
  %.not.i143 = icmp eq ptr %.val131, %i.bx
  br i1 %.not.i143, label %PyObject_TypeCheck.exit144.thread, label %PyObject_TypeCheck.exit144

PyObject_TypeCheck.exit144:                       ; preds = %_Py_NewRef.exit142
  %i.by = tail call i32 @PyType_IsSubtype(ptr noundef %.val131, ptr noundef %i.bx) #18
  %.not157 = icmp eq i32 %i.by, 0
  br i1 %.not157, label %bb.af, label %PyObject_TypeCheck.exit144.thread

PyObject_TypeCheck.exit144.thread:                ; preds = %_Py_NewRef.exit142, %PyObject_TypeCheck.exit144
  %i.bz = tail call ptr @PyCArgObject_new(ptr noundef nonnull %.val137.val) #18 ; 6 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %Py_DECREF.exit118, label %bb.ad

bb.ad:                                            ; preds = %PyObject_TypeCheck.exit144.thread
  %i.cb = getelementptr i8, ptr %i.bz, i64 16
  store ptr @ffi_type_pointer, ptr %i.cb, align 16, !tbaa !170
  %i.cc = getelementptr i8, ptr %i.bz, i64 24
  store i8 80, ptr %i.cc, align 8, !tbaa !169
  %i.cd = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, -1073741825
  br i1 %i.ce, label %Py_INCREF.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add nuw i32 %i.cd, 1
  store i32 %i.cf, ptr %2, align 8, !tbaa !28
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.ad, %bb.ae
  %i.cg = getelementptr i8, ptr %2, i64 16
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !201
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55
  %i.cj = getelementptr i8, ptr %i.bz, i64 32
  store ptr %i.ci, ptr %i.cj, align 16, !tbaa !28
  %i.ck = getelementptr i8, ptr %i.bz, i64 64
  store ptr %2, ptr %i.ck, align 16, !tbaa !143
  br label %Py_DECREF.exit118

bb.af:                                            ; preds = %PyObject_TypeCheck.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.val136 = load ptr, ptr %i.h, align 8, !tbaa !15
  call fastcc void @PyStgInfo_FromObject(ptr noundef nonnull %.val137.val, ptr %.val136, ptr noundef %i.b)
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %.not105 = icmp eq ptr %i.cl, null
  br i1 %.not105, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = getelementptr i8, ptr %.val137.val, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 2 uses
  %.val132 = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.not.i145 = icmp eq ptr %.val132, %i.cn
  br i1 %.not.i145, label %PyObject_TypeCheck.exit146.thread, label %PyObject_TypeCheck.exit146

PyObject_TypeCheck.exit146:                       ; preds = %bb.ag
  %i.co = tail call i32 @PyType_IsSubtype(ptr noundef %.val132, ptr noundef %i.cn) #18
  %.not158 = icmp eq i32 %i.co, 0
  br i1 %.not158, label %bb.am, label %PyObject_TypeCheck.exit146.thread

PyObject_TypeCheck.exit146.thread:                ; preds = %bb.ag, %PyObject_TypeCheck.exit146
  %i.cp = getelementptr i8, ptr %i.cl, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 3 uses
  %.not107 = icmp eq ptr %i.cq, null
  br i1 %.not107, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %PyObject_TypeCheck.exit146.thread
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %.val123 = load ptr, ptr %i.cr, align 8, !tbaa !15
  %i.cs = getelementptr i8, ptr %.val123, i64 168
  %.val127 = load i64, ptr %i.cs, align 8, !tbaa !17
  %i.ct = and i64 %.val127, 268435456
  %.not108 = icmp eq i64 %i.ct, 0
  br i1 %.not108, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.cq) #18
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  switch i8 %i.cv, label %bb.am [
    i8 122, label %bb.aj
    i8 90, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.cw = tail call ptr @PyCArgObject_new(ptr noundef nonnull %.val137.val) #18 ; 6 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %Py_DECREF.exit112, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  store ptr @ffi_type_pointer, ptr %i.cy, align 16, !tbaa !170
  %i.cz = getelementptr i8, ptr %i.cw, i64 24
  store i8 90, ptr %i.cz, align 8, !tbaa !169
  %i.da = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.db = icmp ugt i32 %i.da, -1073741825
  br i1 %i.db, label %_Py_NewRef.exit147, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = add nuw i32 %i.da, 1
  store i32 %i.dc, ptr %2, align 8, !tbaa !28
  br label %_Py_NewRef.exit147

_Py_NewRef.exit147:                               ; preds = %bb.ak, %bb.al
  %i.dd = getelementptr i8, ptr %i.cw, i64 64
  store ptr %2, ptr %i.dd, align 16, !tbaa !143
  %i.de = getelementptr i8, ptr %2, i64 16
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !51
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !55
  %i.dh = getelementptr i8, ptr %i.cw, i64 32
  store ptr %i.dg, ptr %i.dh, align 16, !tbaa !28
  br label %Py_DECREF.exit112

bb.am:                                            ; preds = %bb.ai, %bb.ah, %PyObject_TypeCheck.exit146.thread, %PyObject_TypeCheck.exit146, %bb.af
  %i.di = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #18
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %Py_DECREF.exit112, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !32
end_hunk_7
begin_hunk_8_@Pointer_subscript:bb.a

copy_pointer_to_list_lock_held.exit:              ; preds = %bb.ah
  %i.fk = load i32, ptr %i.fc, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.fk, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit

bb.aj:                                            ; preds = %copy_pointer_to_list_lock_held.exit
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.fc, align 8, !tbaa !28
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ak, label %Py_DECREF.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #18
  br label %Py_DECREF.exit

bb.al:                                            ; preds = %bb.d
  %i.fn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.fn, ptr noundef nonnull @.str.184) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ai, %bb.ag, %._crit_edge145, %bb.x, %bb.v, %bb.t, %._crit_edge, %.thread136, %bb.ac, %bb.aa, %bb.af, %copy_pointer_to_list_lock_held.exit, %bb.aj, %bb.ak, %bb.h, %.thread161, %bb.m, %bb.g, %bb.l, %bb.o, %bb.c, %.split103, %.split, %bb.al
  %.7 = phi ptr [ null, %bb.al ], [ %i.g, %.split103 ], [ null, %bb.c ], [ %i.e, %.split ], [ null, %.thread161 ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.af ], [ %i.fb, %._crit_edge ], [ %i.df, %._crit_edge145 ], [ %i.bs, %bb.t ], [ %i.by, %bb.v ], [ %i.cb, %bb.x ], [ %i.dm, %bb.aa ], [ %i.ds, %bb.ac ], [ %i.dx, %.thread136 ], [ null, %bb.ak ], [ null, %copy_pointer_to_list_lock_held.exit ], [ null, %bb.aj ], [ %i.fc, %bb.ag ], [ %i.fc, %bb.ai ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal ptr @Pointer_item(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @Pointer_ass_item(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.177) #18, !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !51
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.176) #18, !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val20.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr i8, ptr %.val20.i, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.j = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !224
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !72 ; 3 uses
  %.val21.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i.i, i64 40  ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = tail call i32 @PyObject_IsInstance(ptr noundef %.val21.i, ptr noundef %i.m) #18, !inline_history !223
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %PyStgInfo_FromObject.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.p = tail call ptr @PyObject_GetTypeData(ptr noundef %.val21.i, ptr noundef %i.o) #18, !inline_history !223 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %i.q, 0
  %spec.select.i = select i1 %.not8.i.i.i, ptr null, ptr %i.p
  br label %PyStgInfo_FromObject.exit.i

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.f, %bb.e
  %.029.i = phi ptr [ null, %bb.e ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.r = getelementptr i8, ptr %.029.i, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 3 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.u = tail call i32 @PyObject_IsInstance(ptr noundef %i.s, ptr noundef %i.t) #18, !inline_history !223 ; 0 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.w = tail call ptr @PyObject_GetTypeData(ptr noundef %i.s, ptr noundef %i.v) #18, !inline_history !223
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = mul i64 %i.y, %1
  %i.aa = getelementptr i8, ptr %.029.i, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.z
  %i.ad = getelementptr i8, ptr %.val.i.i, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %.val.i25.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.not.i.i26.i = icmp eq ptr %.val.i25.i, %i.ae
  br i1 %.not.i.i26.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %PyStgInfo_FromObject.exit.i
  %i.af = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i25.i, ptr noundef %i.ae) #18, !inline_history !223
  %.not16.i.i = icmp eq i32 %i.af, 0
  br i1 %.not16.i.i, label %bb.g, label %PyObject_TypeCheck.exit.thread.i.i

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.4) #18, !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %PyStgInfo_FromObject.exit.i
  %i.ah = tail call fastcc ptr @_PyCData_set(ptr noundef nonnull readonly %.val.i.i, ptr noundef %i.s, ptr noundef readonly %i.ab, ptr noundef nonnull %2, i64 noundef %i.y, ptr noundef %i.ac), !inline_history !223 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %Pointer_ass_item_lock_held.exit, label %bb.h

bb.h:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.aj = tail call fastcc i32 @KeepRef(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.ah), !inline_history !223
  br label %Pointer_ass_item_lock_held.exit

Pointer_ass_item_lock_held.exit:                  ; preds = %bb.b, %bb.d, %bb.g, %PyObject_TypeCheck.exit.thread.i.i, %bb.h
  %.3.i = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.g ], [ %i.aj, %bb.h ], [ -1, %PyObject_TypeCheck.exit.thread.i.i ]
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define internal ptr @Pointer_get_contents(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %PyStgInfo_FromObject.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.176) #18, !inline_history !225
  br label %Pointer_get_contents_lock_held.exit

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val10.i = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.h = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !226
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !72
  %.val11.i = load ptr, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i.i, i64 40  ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 @PyObject_IsInstance(ptr noundef %.val11.i, ptr noundef %i.k) #18, !inline_history !225 ; 0 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.n = tail call ptr @PyObject_GetTypeData(ptr noundef %.val11.i, ptr noundef %i.m) #18, !inline_history !225
  %i.o = getelementptr i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 4 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.r = tail call i32 @PyObject_IsInstance(ptr noundef %i.p, ptr noundef %i.q) #18
  %.not.i.i.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit.i
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.t = tail call ptr @PyObject_GetTypeData(ptr noundef %i.p, ptr noundef %i.s) #18 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %.not8.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not8.i.i.i4, label %bb.d, label %PyStgInfo_FromType.exit.i

bb.d:                                             ; preds = %bb.c, %PyStgInfo_FromObject.exit.i
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.1) #18
  br label %Pointer_get_contents_lock_held.exit

PyStgInfo_FromType.exit.i:                        ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.t, i64 140      ; 2 uses
  %.val.i.i5 = load i8, ptr %i.w, align 4, !tbaa !43
  %i.x = icmp eq i8 %.val.i.i5, 1
  br i1 %i.x, label %stginfo_set_dict_final.exit.i, label %bb.e

bb.e:                                             ; preds = %PyStgInfo_FromType.exit.i
  store i8 1, ptr %i.w, align 4, !tbaa !43
  br label %stginfo_set_dict_final.exit.i

stginfo_set_dict_final.exit.i:                    ; preds = %bb.e, %PyStgInfo_FromType.exit.i
  %i.y = getelementptr i8, ptr %i.p, i64 304
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = tail call ptr %i.z(ptr noundef %i.p, i64 noundef 0) #18, !inline_history !227 ; 8 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %Pointer_get_contents_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %stginfo_set_dict_final.exit.i
  %i.ac = getelementptr i8, ptr %i.t, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr i8, ptr %i.aa, i64 48
  store i64 %i.ad, ptr %i.ae, align 16, !tbaa !46
  %i.af = getelementptr i8, ptr %i.t, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr i8, ptr %i.aa, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.c, ptr %i.ai, align 16, !tbaa !51
  %i.aj = getelementptr i8, ptr %i.aa, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !52
  %i.ak = load i32, ptr %0, align 16, !tbaa !28   ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %_Py_NewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add nuw i32 %i.ak, 1
  store i32 %i.am, ptr %0, align 16, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.g, %bb.f
  %i.an = getelementptr i8, ptr %i.aa, i64 32
  store ptr %0, ptr %i.an, align 16, !tbaa !53
  %i.ao = getelementptr i8, ptr %i.aa, i64 56
  store i64 0, ptr %i.ao, align 8, !tbaa !54
  br label %Pointer_get_contents_lock_held.exit

Pointer_get_contents_lock_held.exit:              ; preds = %_Py_NewRef.exit.i, %stginfo_set_dict_final.exit.i, %bb.d, %bb.b
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.aa, %_Py_NewRef.exit.i ], [ null, %stginfo_set_dict_final.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal i32 @Pointer_set_contents(ptr noundef captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.177) #18, !inline_history !228
  br label %Pointer_set_contents_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val29.i = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr i8, ptr %.val29.i, i64 8
  %.val28.i = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.e = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val28.i, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !229
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !72 ; 2 uses
  %.val31.i = load ptr, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i, i64 40  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = tail call i32 @PyObject_IsInstance(ptr noundef %.val31.i, ptr noundef %i.h) #18, !inline_history !228
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %PyStgInfo_FromObject.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.k = tail call ptr @PyObject_GetTypeData(ptr noundef %.val31.i, ptr noundef %i.j) #18, !inline_history !228 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %i.l, 0
  %spec.select.i = select i1 %.not8.i.i.i, ptr null, ptr %i.k
  br label %PyStgInfo_FromObject.exit.i

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ null, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.m = getelementptr i8, ptr %.val.i.i, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val30.i = load ptr, ptr %i.o, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq ptr %.val30.i, %i.n
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %PyStgInfo_FromObject.exit.i
  %i.p = tail call i32 @PyType_IsSubtype(ptr noundef %.val30.i, ptr noundef %i.n) #18, !inline_history !228
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %bb.e, label %PyObject_TypeCheck.exit.thread.i

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.q = getelementptr i8, ptr %.0.i, i64 56      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %1, ptr noundef %i.r) #18, !inline_history !228 ; 2 uses
  switch i32 %i.s, label %PyObject_TypeCheck.exit.thread.i [
    i32 -1, label %Pointer_set_contents_lock_held.exit
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.x = getelementptr i8, ptr %.val.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.178, ptr noundef %i.w, ptr noundef %i.y) #18, !inline_history !228 ; 0 uses
  br label %Pointer_set_contents_lock_held.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %bb.e, %PyObject_TypeCheck.exit.i, %PyStgInfo_FromObject.exit.i
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !51
  %i.ac = getelementptr i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !51
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !55
  %i.ae = load i32, ptr %1, align 16, !tbaa !28   ; 2 uses
  %i.af = icmp ugt i32 %i.ae, -1073741825
  br i1 %i.af, label %Py_INCREF.exit27.i, label %bb.g

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.ag = add nuw i32 %i.ae, 1
  store i32 %i.ag, ptr %1, align 16, !tbaa !28
  br label %Py_INCREF.exit27.i

Py_INCREF.exit27.i:                               ; preds = %bb.g, %PyObject_TypeCheck.exit.thread.i
  %i.ah = tail call fastcc i32 @KeepRef(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %1), !inline_history !228
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %Pointer_set_contents_lock_held.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Py_INCREF.exit27.i, %.preheader.i
  %.09.i.i.i = phi ptr [ %i.ak, %.preheader.i ], [ %1, %Py_INCREF.exit27.i ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.09.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !53 ; 2 uses
  %.not.i.i32.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i32.i, label %bb.h, label %.preheader.i, !llvm.loop !64

bb.h:                                             ; preds = %.preheader.i
  %i.al = getelementptr i8, ptr %.09.i.i.i, i64 64 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !66 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %GetKeepedObjects.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %.09.i.i.i, i64 48
  %i.ap = load i64, ptr %i.ao, align 16, !tbaa !46
  %.not11.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not11.i.i.i, label %bb.j, label %GetKeepedObjects.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !28 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %_Py_NewRef.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr @_Py_NoneStruct, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i.i.i

_Py_NewRef.exit.i.i.i:                            ; preds = %bb.k, %bb.j
  store ptr @_Py_NoneStruct, ptr %i.al, align 16, !tbaa !66
  br label %GetKeepedObjects.exit.thread.i

GetKeepedObjects.exit.i:                          ; preds = %bb.i
  %i.at = tail call ptr @PyDict_New() #18, !inline_history !228 ; 3 uses
  store ptr %i.at, ptr %i.al, align 16, !tbaa !66
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Pointer_set_contents_lock_held.exit, label %GetKeepedObjects.exit.thread.i

GetKeepedObjects.exit.thread.i:                   ; preds = %GetKeepedObjects.exit.i, %_Py_NewRef.exit.i.i.i, %bb.h
  %.0.i4.i = phi ptr [ %i.at, %GetKeepedObjects.exit.i ], [ @_Py_NoneStruct, %_Py_NewRef.exit.i.i.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.av = load i32, ptr %.0.i4.i, align 8, !tbaa !28 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, -1073741825
  br i1 %i.aw, label %Py_INCREF.exit.i, label %bb.l

bb.l:                                             ; preds = %GetKeepedObjects.exit.thread.i
  %i.ax = add nuw i32 %i.av, 1
  store i32 %i.ax, ptr %.0.i4.i, align 8, !tbaa !28
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.l, %GetKeepedObjects.exit.thread.i
  %i.ay = tail call fastcc i32 @KeepRef(ptr noundef nonnull %0, i64 noundef 0, ptr noundef nonnull %.0.i4.i), !inline_history !228
  br label %Pointer_set_contents_lock_held.exit

Pointer_set_contents_lock_held.exit:              ; preds = %bb.b, %bb.e, %bb.f, %Py_INCREF.exit27.i, %GetKeepedObjects.exit.i, %Py_INCREF.exit.i
  %.2.i = phi i32 [ -1, %bb.b ], [ -1, %GetKeepedObjects.exit.i ], [ %i.ay, %Py_INCREF.exit.i ], [ -1, %Py_INCREF.exit27.i ], [ %i.s, %bb.e ], [ -1, %bb.f ]
  ret i32 %.2.i
}

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #2

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #2

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @Pointer_item_lock_held(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.176) #18
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val17 = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr i8, ptr %.val17, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.h = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !101
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !72 ; 2 uses
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 40    ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 @PyObject_IsInstance(ptr noundef %.val18, ptr noundef %i.k) #18
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %PyStgInfo_FromObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.n = tail call ptr @PyObject_GetTypeData(ptr noundef %.val18, ptr noundef %i.m) #18 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.o, 0
  %spec.select = select i1 %.not8.i.i, ptr null, ptr %i.n
  br label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.d, %bb.c
  %.024 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.p = getelementptr i8, ptr %.024, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.s = tail call i32 @PyObject_IsInstance(ptr noundef %i.q, ptr noundef %i.r) #18 ; 0 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.u = tail call ptr @PyObject_GetTypeData(ptr noundef %i.q, ptr noundef %i.t) #18
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %i.x = mul i64 %i.w, %1
  %i.y = getelementptr i8, ptr %.024, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.x
  %i.ab = tail call ptr @PyCData_get(ptr noundef nonnull %.val.i, ptr noundef %i.q, ptr noundef %i.z, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.w, ptr noundef %i.aa)
  br label %bb.e

bb.e:                                             ; preds = %PyStgInfo_FromObject.exit, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.ab, %PyStgInfo_FromObject.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @Array_init(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !17
  %i.c = and i64 %.val14, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.164) #18
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val15 = load i64, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = icmp sgt i64 %.val15, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.01216, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %.val15
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !230

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01216 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %.01216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call i32 @PySequence_SetItem(ptr noundef %0, i64 noundef %.01216, ptr noundef %i.j) #18
  %.not13 = icmp eq i32 %i.k, -1
  br i1 %.not13, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ -1, %.lr.ph ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @Array_length(ptr noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 16, !tbaa !46
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @Array_item(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @Array_item_lock_held(ptr noundef %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @Array_ass_item(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @Array_ass_item_lock_held(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @Array_subscript(ptr noundef %0, ptr noundef %1) #0 {
end_hunk_8
begin_hunk_9_@PyCFuncPtr_clear:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %Py_DECREF.exit67, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit69
  store ptr null, ptr %i.f, align 8, !tbaa !32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not.i66 = icmp sgt i32 %i.h, -1
  br i1 %.not.i66, label %bb.f, label %Py_DECREF.exit67

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !28
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit67

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #18
  br label %Py_DECREF.exit67

Py_DECREF.exit67:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit69
  %i.k = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 4 uses
  %.not50 = icmp eq ptr %i.l, null
  br i1 %.not50, label %Py_DECREF.exit65, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit67
  store ptr null, ptr %i.k, align 8, !tbaa !32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i64 = icmp sgt i32 %i.m, -1
  br i1 %.not.i64, label %bb.i, label %Py_DECREF.exit65

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit65

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #18
  br label %Py_DECREF.exit65

Py_DECREF.exit65:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit67
  %i.p = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 4 uses
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %Py_DECREF.exit63, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit65
  store ptr null, ptr %i.p, align 8, !tbaa !32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %.not.i62 = icmp sgt i32 %i.r, -1
  br i1 %.not.i62, label %bb.l, label %Py_DECREF.exit63

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit63

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #18
  br label %Py_DECREF.exit63

Py_DECREF.exit63:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit65
  %i.u = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 4 uses
  %.not52 = icmp eq ptr %i.v, null
  br i1 %.not52, label %Py_DECREF.exit61, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit63
  store ptr null, ptr %i.u, align 8, !tbaa !32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %.not.i60 = icmp sgt i32 %i.w, -1
  br i1 %.not.i60, label %bb.o, label %Py_DECREF.exit61

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %Py_DECREF.exit61

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #18
  br label %Py_DECREF.exit61

Py_DECREF.exit61:                                 ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit63
  %i.z = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 4 uses
  %.not53 = icmp eq ptr %i.aa, null
  br i1 %.not53, label %Py_DECREF.exit59, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit61
  store ptr null, ptr %i.z, align 8, !tbaa !32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %.not.i58 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i58, label %bb.r, label %Py_DECREF.exit59

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %Py_DECREF.exit59

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #18
  br label %Py_DECREF.exit59

Py_DECREF.exit59:                                 ; preds = %bb.s, %bb.r, %bb.q, %Py_DECREF.exit61
  %i.ae = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  %.not54 = icmp eq ptr %i.af, null
  br i1 %.not54, label %Py_DECREF.exit57, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit59
  store ptr null, ptr %i.ae, align 8, !tbaa !32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not.i56 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i56, label %bb.u, label %Py_DECREF.exit57

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !28
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.v, label %Py_DECREF.exit57

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #18
  br label %Py_DECREF.exit57

Py_DECREF.exit57:                                 ; preds = %bb.v, %bb.u, %bb.t, %Py_DECREF.exit59
  %i.aj = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 4 uses
  %.not55 = icmp eq ptr %i.ak, null
  br i1 %.not55, label %Py_DECREF.exit, label %bb.w

bb.w:                                             ; preds = %Py_DECREF.exit57
  store ptr null, ptr %i.aj, align 8, !tbaa !55
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !28
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.y, %bb.x, %bb.w, %Py_DECREF.exit57
  %i.ao = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 4 uses
  %.not.i77 = icmp eq ptr %i.ap, null
  br i1 %.not.i77, label %Py_DECREF.exit22.i, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit
  store ptr null, ptr %i.ao, align 8, !tbaa !32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %.not.i21.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i21.i, label %bb.aa, label %Py_DECREF.exit22.i

bb.aa:                                            ; preds = %bb.z
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !28
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.ab, label %Py_DECREF.exit22.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #18
  br label %Py_DECREF.exit22.i

Py_DECREF.exit22.i:                               ; preds = %bb.ab, %bb.aa, %bb.z, %Py_DECREF.exit
  %i.at = getelementptr i8, ptr %0, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !52
  %.not18.i = icmp eq i32 %i.au, 0
  br i1 %.not18.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %Py_DECREF.exit22.i
  %i.av = getelementptr i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !51 ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 80
  %.not19.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not19.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @PyMem_Free(ptr noundef %i.aw) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %Py_DECREF.exit22.i
  %i.ay = getelementptr i8, ptr %0, i64 16
  store ptr null, ptr %i.ay, align 16, !tbaa !51
  %i.az = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !121 ; 4 uses
  %.not20.i = icmp eq ptr %i.ba, null
  br i1 %.not20.i, label %PyCData_clear.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.az, align 16, !tbaa !121
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i.i, label %bb.ag, label %PyCData_clear.exit

bb.ag:                                            ; preds = %bb.af
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !28
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ah, label %PyCData_clear.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #18
  br label %PyCData_clear.exit

PyCData_clear.exit:                               ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCFuncPtr_new(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val64 = load i64, ptr %i.f, align 8, !tbaa !102 ; 3 uses
  %i.g = icmp eq i64 %.val64, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.i = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !267
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.k = tail call fastcc ptr @generic_pycdata_new(ptr noundef %.val.i.i, ptr noundef %0), !inline_history !268
  br label %Py_DECREF.exit56

bb.c:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %.val64, 0
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val59 = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr i8, ptr %.val59, i64 168
  %.val61 = load i64, ptr %i.p, align 8, !tbaa !17 ; 2 uses
  %i.q = and i64 %.val61, 67108864
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.r = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.233, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #18, !inline_history !269
  %.not.i65 = icmp eq i32 %i.r, 0
  br i1 %.not.i65, label %PyCFuncPtr_FromDll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.t = icmp eq ptr %i.s, @_Py_NoneStruct
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.d, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.v = call ptr @PySequence_Tuple(ptr noundef %i.u) #18, !inline_history !269 ; 3 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !32
  %.not31.i = icmp eq ptr %i.v, null
  br i1 %.not31.i, label %PyCFuncPtr_FromDll.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.234, ptr noundef nonnull @_get_name, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #18, !inline_history !269
  %.not32.i = icmp eq i32 %i.w, 0
  br i1 %.not32.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not.i62.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i62.i, label %bb.k, label %PyCFuncPtr_FromDll.exit

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !28
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %PyCFuncPtr_FromDll.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.x) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.m:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.ad = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef %i.ab, ptr noundef %i.ac) #18, !inline_history !269
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i60.i, label %bb.o, label %PyCFuncPtr_FromDll.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !28
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %PyCFuncPtr_FromDll.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.af) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.q:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ak = call ptr @PyObject_GetAttrString(ptr noundef %i.aj, ptr noundef nonnull @.str.84) #18, !inline_history !269 ; 9 uses
  %.not33.i = icmp eq ptr %i.ak, null
  br i1 %.not33.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i58.i, label %bb.s, label %PyCFuncPtr_FromDll.exit

bb.s:                                             ; preds = %bb.r
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !28
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.t, label %PyCFuncPtr_FromDll.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.u:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %i.ak, i64 8
  %.val76.i = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr i8, ptr %.val76.i, i64 168
  %.val77.i = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.ar = and i64 %.val77.i, 16777216
  %.not34.i = icmp eq i64 %i.ar, 0
  br i1 %.not34.i, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.85) #18, !inline_history !269
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %.not.i56.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i56.i, label %bb.w, label %Py_DECREF.exit57.i

bb.w:                                             ; preds = %bb.v
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !28
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.x, label %Py_DECREF.exit57.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #18, !inline_history !269
  br label %Py_DECREF.exit57.i

Py_DECREF.exit57.i:                               ; preds = %bb.x, %bb.w, %bb.v
  %i.ax = load i32, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %.not.i54.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i54.i, label %bb.y, label %PyCFuncPtr_FromDll.exit

bb.y:                                             ; preds = %Py_DECREF.exit57.i
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.ak, align 8, !tbaa !28
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.z, label %PyCFuncPtr_FromDll.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.aa:                                            ; preds = %bb.u
  %i.ba = call ptr @PyLong_AsVoidPtr(ptr noundef nonnull %i.ak) #18, !inline_history !269
  %i.bb = load i32, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %.not.i52.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i52.i, label %bb.ab, label %Py_DECREF.exit53.i

bb.ab:                                            ; preds = %bb.aa
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ak, align 8, !tbaa !28
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ac, label %Py_DECREF.exit53.i

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #18, !inline_history !269
  br label %Py_DECREF.exit53.i

Py_DECREF.exit53.i:                               ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.be = call ptr @PyErr_Occurred() #18, !inline_history !269
  %.not35.i = icmp eq ptr %i.be, null
  br i1 %.not35.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %Py_DECREF.exit53.i
  %i.bf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.bf, ptr noundef nonnull @.str.86) #18, !inline_history !269
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  %.not.i50.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i50.i, label %bb.ae, label %PyCFuncPtr_FromDll.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !28
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %PyCFuncPtr_FromDll.exit

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.bg) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.ag:                                            ; preds = %Py_DECREF.exit53.i
  %i.bk = call ptr @dlerror() #18, !inline_history !269 ; 0 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.bm = call ptr @dlsym(ptr noundef %i.ba, ptr noundef %i.bl) #18, !inline_history !269 ; 2 uses
  %.not36.i = icmp eq ptr %i.bm, null
  br i1 %.not36.i, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.bn = call ptr @dlerror() #18, !inline_history !269 ; 2 uses
  %.not37.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !32 ; 2 uses
  br i1 %.not37.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_PyErr_SetLocaleString(ptr noundef %i.bo, ptr noundef nonnull %i.bn) #18, !inline_history !269
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %.not.i48.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i48.i, label %bb.aj, label %PyCFuncPtr_FromDll.exit

bb.aj:                                            ; preds = %bb.ai
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !28
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ak, label %PyCFuncPtr_FromDll.exit

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.al:                                            ; preds = %bb.ah
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.bu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bo, ptr noundef nonnull @.str.235, ptr noundef %i.bt) #18, !inline_history !269 ; 0 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !28 ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.bw, -1
  br i1 %.not.i46.i, label %bb.am, label %PyCFuncPtr_FromDll.exit

bb.am:                                            ; preds = %bb.al
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !28
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.an, label %PyCFuncPtr_FromDll.exit

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.ao:                                            ; preds = %bb.ag
  %i.bz = getelementptr i8, ptr %0, i64 8
  %.val.i66 = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.ca = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i66, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !270
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  %.val.i.i67 = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 2 uses
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.cd = call fastcc i32 @_validate_paramflags(ptr noundef %.val.i.i67, ptr noundef %0, ptr noundef %i.cc, ptr noundef null), !inline_history !269
  %.not38.i = icmp eq i32 %i.cd, 0
  br i1 %.not38.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !28 ; 2 uses
  %.not.i44.i = icmp sgt i32 %i.cf, -1
  br i1 %.not.i44.i, label %bb.aq, label %PyCFuncPtr_FromDll.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !28
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ar, label %PyCFuncPtr_FromDll.exit

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.ce) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.as:                                            ; preds = %bb.ao
  %i.ci = call fastcc ptr @generic_pycdata_new(ptr noundef %.val.i.i67, ptr noundef nonnull %0), !inline_history !269 ; 11 uses
  %.not39.i = icmp eq ptr %i.ci, null
  br i1 %.not39.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i42.i, label %bb.au, label %PyCFuncPtr_FromDll.exit

bb.au:                                            ; preds = %bb.at
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !28
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.av, label %PyCFuncPtr_FromDll.exit

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.aw:                                            ; preds = %bb.as
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !32  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !28 ; 2 uses
  %i.cp = icmp ugt i32 %i.co, -1073741825
  br i1 %i.cp, label %_Py_XNewRef.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cq = add nuw i32 %i.co, 1
  store i32 %i.cq, ptr %i.cn, align 8, !tbaa !28
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.cr = getelementptr i8, ptr %i.ci, i64 152
  store ptr %i.cn, ptr %i.cr, align 8, !tbaa !253
  %i.cs = getelementptr i8, ptr %i.ci, i64 16
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !201
  store ptr %i.bm, ptr %i.ct, align 8, !tbaa !55
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !28 ; 2 uses
  %i.cw = icmp ugt i32 %i.cv, -1073741825
  br i1 %i.cw, label %Py_INCREF.exit.i, label %bb.az

bb.az:                                            ; preds = %_Py_XNewRef.exit.i
  %i.cx = add nuw i32 %i.cv, 1
  store i32 %i.cx, ptr %i.cu, align 8, !tbaa !28
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.az, %_Py_XNewRef.exit.i
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !28 ; 2 uses
  %.not.i40.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i40.i, label %bb.ba, label %Py_DECREF.exit41.i

bb.ba:                                            ; preds = %Py_INCREF.exit.i
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !28
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.bb, label %Py_DECREF.exit41.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #18, !inline_history !269
  br label %Py_DECREF.exit41.i

Py_DECREF.exit41.i:                               ; preds = %bb.bb, %bb.ba, %Py_INCREF.exit.i
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.dd = call fastcc i32 @KeepRef(ptr noundef nonnull %i.ci, i64 noundef 0, ptr noundef %i.dc), !inline_history !269
  %i.de = icmp eq i32 %i.dd, -1
  %i.df = load i32, ptr %i.ci, align 16, !tbaa !28 ; 4 uses
  br i1 %i.de, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %Py_DECREF.exit41.i
  %.not.i.i = icmp sgt i32 %i.df, -1
  br i1 %.not.i.i, label %bb.bd, label %PyCFuncPtr_FromDll.exit

bb.bd:                                            ; preds = %bb.bc
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.ci, align 16, !tbaa !28
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.be, label %PyCFuncPtr_FromDll.exit

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #18, !inline_history !269
  br label %PyCFuncPtr_FromDll.exit

bb.bf:                                            ; preds = %Py_DECREF.exit41.i
  %i.di = icmp ugt i32 %i.df, -1073741825
  br i1 %i.di, label %_Py_NewRef.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dj = add nuw i32 %i.df, 1
  store i32 %i.dj, ptr %i.ci, align 16, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.bg, %bb.bf
  %i.dk = getelementptr i8, ptr %i.ci, i64 104
  store ptr %i.ci, ptr %i.dk, align 8, !tbaa !260
  br label %PyCFuncPtr_FromDll.exit

PyCFuncPtr_FromDll.exit:                          ; preds = %bb.e, %bb.h, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %Py_DECREF.exit57.i, %bb.y, %bb.z, %bb.ad, %bb.ae, %bb.af, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.av, %bb.bc, %bb.bd, %bb.be, %_Py_NewRef.exit.i
  %.2.i = phi ptr [ null, %bb.l ], [ null, %bb.z ], [ null, %bb.af ], [ null, %bb.h ], [ null, %bb.t ], [ null, %bb.p ], [ null, %bb.an ], [ null, %bb.e ], [ null, %bb.ak ], [ null, %bb.av ], [ %i.ci, %_Py_NewRef.exit.i ], [ null, %bb.ar ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.r ], [ null, %bb.s ], [ null, %Py_DECREF.exit57.i ], [ null, %bb.y ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.ap ], [ null, %bb.aq ], [ null, %bb.at ], [ null, %bb.au ], [ null, %bb.bc ], [ null, %bb.bd ], [ null, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %Py_DECREF.exit56

bb.bh:                                            ; preds = %bb.d
  %i.dl = icmp ne i64 %.val64, 1
  %i.dm = and i64 %.val61, 16777216
  %.not48 = icmp eq i64 %i.dm, 0
  %or.cond = or i1 %i.dl, %.not48
  br i1 %or.cond, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dn = tail call ptr @PyLong_AsVoidPtr(ptr noundef nonnull %i.n) #18 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.dp = tail call ptr @PyErr_Occurred() #18
  %.not54 = icmp eq ptr %i.dp, null
  br i1 %.not54, label %bb.bk, label %Py_DECREF.exit56

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dq = getelementptr i8, ptr %0, i64 8
  %.val.i68 = load ptr, ptr %i.dq, align 8, !tbaa !15
  %i.dr = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i68, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !267
  %i.ds = getelementptr i8, ptr %i.dr, i64 24
  %.val.i.i69 = load ptr, ptr %i.ds, align 8, !tbaa !72
  %i.dt = tail call fastcc ptr @generic_pycdata_new(ptr noundef %.val.i.i69, ptr noundef %0), !inline_history !268 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %Py_DECREF.exit56, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !51
  store ptr %i.dn, ptr %i.dw, align 8, !tbaa !55
  br label %Py_DECREF.exit56

.thread:                                          ; preds = %bb.c, %bb.bh
  %i.dx = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.230, ptr noundef nonnull %i.e) #18
  %.not49 = icmp eq i32 %i.dx, 0
  br i1 %.not49, label %Py_DECREF.exit56, label %bb.bm

bb.bm:                                            ; preds = %.thread
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.dz = call i32 @PyCallable_Check(ptr noundef %i.dy) #18
  %.not50 = icmp eq i32 %i.dz, 0
  br i1 %.not50, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ea = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ea, ptr noundef nonnull @.str.231) #18
  br label %Py_DECREF.exit56

bb.bo:                                            ; preds = %bb.bm
  %i.eb = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.ec = call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !101
  %i.ed = getelementptr i8, ptr %i.ec, i64 24
  %.val.i70 = load ptr, ptr %i.ed, align 8, !tbaa !72 ; 3 uses
  %i.ee = getelementptr i8, ptr %.val.i70, i64 40 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !41
  %i.eg = call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.ef) #18
  %.not.i.i71 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i71, label %PyStgInfo_FromType.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !41
  %i.ei = call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.eh) #18 ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not8.i.i, label %PyStgInfo_FromType.exit.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.bp
  %i.ek = getelementptr i8, ptr %i.ei, i64 88
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !92 ; 2 uses
  %.not52 = icmp eq ptr %i.el, null
  br i1 %.not52, label %PyStgInfo_FromType.exit.thread, label %bb.bq

PyStgInfo_FromType.exit.thread:                   ; preds = %bb.bp, %bb.bo, %PyStgInfo_FromType.exit
  %i.em = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.em, ptr noundef nonnull @.str.232) #18
  br label %Py_DECREF.exit56

bb.bq:                                            ; preds = %PyStgInfo_FromType.exit
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.eo = getelementptr i8, ptr %i.ei, i64 104
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !94
  %i.eq = getelementptr i8, ptr %i.ei, i64 136
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !135
  %i.es = call ptr @_ctypes_alloc_callback(ptr noundef nonnull %.val.i70, ptr noundef %i.en, ptr noundef nonnull %i.el, ptr noundef %i.ep, i32 noundef %i.er) #18 ; 9 uses
  %.not53 = icmp eq ptr %i.es, null
  br i1 %.not53, label %Py_DECREF.exit56, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.et = call fastcc ptr @generic_pycdata_new(ptr noundef nonnull %.val.i70, ptr noundef nonnull %0) ; 9 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.ev = load i32, ptr %i.es, align 8, !tbaa !28 ; 2 uses
  %.not.i55 = icmp sgt i32 %i.ev, -1
  br i1 %.not.i55, label %bb.bt, label %Py_DECREF.exit56

bb.bt:                                            ; preds = %bb.bs
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.es, align 8, !tbaa !28
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bu, label %Py_DECREF.exit56

bb.bu:                                            ; preds = %bb.bt
  call void @_Py_Dealloc(ptr noundef nonnull %i.es) #18
  br label %Py_DECREF.exit56

bb.bv:                                            ; preds = %bb.br
  %i.ey = load ptr, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !28 ; 2 uses
  %i.fa = icmp ugt i32 %i.ez, -1073741825
  br i1 %i.fa, label %_Py_NewRef.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fb = add nuw i32 %i.ez, 1
  store i32 %i.fb, ptr %i.ey, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.bv, %bb.bw
  %i.fc = getelementptr i8, ptr %i.et, i64 104
  store ptr %i.ey, ptr %i.fc, align 8, !tbaa !260
  %i.fd = getelementptr i8, ptr %i.et, i64 96
  store ptr %i.es, ptr %i.fd, align 16, !tbaa !266
  %i.fe = getelementptr i8, ptr %i.es, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !271
  %i.fg = getelementptr i8, ptr %i.et, i64 16
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !201
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !55
  %i.fi = load i32, ptr %i.es, align 8, !tbaa !28 ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, -1073741825
  br i1 %i.fj, label %Py_INCREF.exit, label %bb.bx

bb.bx:                                            ; preds = %_Py_NewRef.exit
  %i.fk = add nuw i32 %i.fi, 1
  store i32 %i.fk, ptr %i.es, align 8, !tbaa !28
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %_Py_NewRef.exit, %bb.bx
  %i.fl = call fastcc i32 @KeepRef(ptr noundef nonnull %i.et, i64 noundef 0, ptr noundef nonnull %i.es)
  %i.fm = icmp eq i32 %i.fl, -1
  br i1 %i.fm, label %bb.by, label %Py_DECREF.exit56

bb.by:                                            ; preds = %Py_INCREF.exit
  %i.fn = load i32, ptr %i.et, align 16, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.fn, -1
  br i1 %.not.i, label %bb.bz, label %Py_DECREF.exit56

bb.bz:                                            ; preds = %bb.by
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  store i32 %i.fo, ptr %i.et, align 16, !tbaa !28
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ca, label %Py_DECREF.exit56

bb.ca:                                            ; preds = %bb.bz
  call void @_Py_Dealloc(ptr noundef nonnull %i.et) #18
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %PyStgInfo_FromType.exit.thread, %bb.bq, %Py_INCREF.exit, %bb.bs, %bb.bt, %bb.bu, %bb.by, %bb.bz, %bb.ca, %.thread, %bb.bl, %bb.bj, %bb.bk, %bb.bn, %PyCFuncPtr_FromDll.exit, %bb.b
  %.2 = phi ptr [ %i.k, %bb.b ], [ %.2.i, %PyCFuncPtr_FromDll.exit ], [ null, %bb.bk ], [ null, %.thread ], [ null, %bb.bn ], [ %i.dt, %bb.bl ], [ null, %bb.bj ], [ null, %PyStgInfo_FromType.exit.thread ], [ %i.et, %Py_INCREF.exit ], [ null, %bb.bu ], [ null, %bb.bq ], [ null, %bb.bs ], [ null, %bb.bt ], [ null, %bb.by ], [ null, %bb.bz ], [ null, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @PyCFuncPtr_bool(ptr noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !201
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp ne ptr %i.c, null
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

declare ptr @_ctypes_callproc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallFunctionObjArgs(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @_ctypes_CFuncPtr_errcheck_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.a, align 16, !tbaa !263 ; 5 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ctypes_CFuncPtr_errcheck_get_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %.val, align 8, !tbaa !28  ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_ctypes_CFuncPtr_errcheck_get_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %.val, align 8, !tbaa !28
  br label %_ctypes_CFuncPtr_errcheck_get_impl.exit

_ctypes_CFuncPtr_errcheck_get_impl.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ %.val, %bb.b ], [ %.val, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_ctypes_CFuncPtr_errcheck_set(ptr noundef captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ctypes_CFuncPtr_errcheck_set_impl.exit, label %bb.b

bb.b:                                             ; preds = %.split.i
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ctypes_CFuncPtr_errcheck_set_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !28
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ctypes_CFuncPtr_errcheck_set_impl.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #18
  br label %_ctypes_CFuncPtr_errcheck_set_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call i32 @PyCallable_Check(ptr noundef nonnull %1) #18
  %.not7.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i, label %bb.j, label %.split5.i

.split5.i:                                        ; preds = %bb.e
  %i.g = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %Py_XINCREF.exit.i, label %bb.f

bb.f:                                             ; preds = %.split5.i
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !28
  br label %Py_XINCREF.exit.i

Py_XINCREF.exit.i:                                ; preds = %bb.f, %.split5.i
  %i.j = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 4 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !32
  %.not.i.i8.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i8.i, label %_ctypes_CFuncPtr_errcheck_set_impl.exit, label %bb.g

bb.g:                                             ; preds = %Py_XINCREF.exit.i
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i9.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i.i9.i, label %bb.h, label %_ctypes_CFuncPtr_errcheck_set_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !28
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %_ctypes_CFuncPtr_errcheck_set_impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #18
  br label %_ctypes_CFuncPtr_errcheck_set_impl.exit

bb.j:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.221) #18
  br label %_ctypes_CFuncPtr_errcheck_set_impl.exit

_ctypes_CFuncPtr_errcheck_set_impl.exit:          ; preds = %.split.i, %bb.b, %bb.c, %bb.d, %Py_XINCREF.exit.i, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ -1, %bb.j ], [ 0, %bb.d ], [ 0, %.split.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %Py_XINCREF.exit.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_CFuncPtr_restype_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !261 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %PyStgInfo_FromObject.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_ctypes_CFuncPtr_restype_get_impl.exit, label %_Py_NewRef.exit.sink.split.i

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val9.i = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %.val9.i, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.g = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #18, !inline_history !274
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %.val10.i = load ptr, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %i.i = getelementptr i8, ptr %.val.i.i, i64 40  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = tail call i32 @PyObject_IsInstance(ptr noundef %.val10.i, ptr noundef %i.j) #18, !inline_history !275 ; 0 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.m = tail call ptr @PyObject_GetTypeData(ptr noundef %.val10.i, ptr noundef %i.l) #18, !inline_history !275
  %i.n = getelementptr i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94   ; 4 uses
  %.not8.i = icmp eq ptr %i.o, null
  br i1 %.not8.i, label %_ctypes_CFuncPtr_restype_get_impl.exit, label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit.i
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_ctypes_CFuncPtr_restype_get_impl.exit, label %_Py_NewRef.exit.sink.split.i

_Py_NewRef.exit.sink.split.i:                     ; preds = %bb.c, %bb.b
  %.sink17.i = phi i32 [ %i.c, %bb.b ], [ %i.p, %bb.c ]
  %.sink16.i = phi ptr [ %i.b, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = add nuw i32 %.sink17.i, 1
  store i32 %i.r, ptr %.sink16.i, align 8, !tbaa !28
  br label %_ctypes_CFuncPtr_restype_get_impl.exit

_ctypes_CFuncPtr_restype_get_impl.exit:           ; preds = %bb.b, %PyStgInfo_FromObject.exit.i, %bb.c, %_Py_NewRef.exit.sink.split.i
  %.1.i = phi ptr [ %i.o, %bb.c ], [ %i.b, %bb.b ], [ @_Py_NoneStruct, %PyStgInfo_FromObject.exit.i ], [ %.sink16.i, %_Py_NewRef.exit.sink.split.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_ctypes_CFuncPtr_restype_set(ptr noundef captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %atomic_xsetref.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %atomic_xsetref.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !28
end_hunk_9
