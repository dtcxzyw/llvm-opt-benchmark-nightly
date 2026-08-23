Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_warnings?download=true
inline.NumInlined: 169
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@PyErr_WarnExplicitFormat:bb.a
get_current_tstate.exit:                          ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.j, i64 10792
  call void @_PyRecursiveMutex_Lock(ptr noundef %i.m) #7
  %i.n = call fastcc ptr @warn_explicit(ptr noundef %i.g, ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %.022, ptr noundef %4, ptr noundef null, ptr noundef null) ; 4 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.p = getelementptr i8, ptr %i.o, i64 10792
  %i.q = call i32 @_PyRecursiveMutex_TryUnlock(ptr noundef %i.p) #7 ; 0 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not.i34 = icmp sgt i32 %i.r, -1
  br i1 %.not.i34, label %bb.g, label %Py_DECREF.exit35

bb.g:                                             ; preds = %get_current_tstate.exit
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !20
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %Py_DECREF.exit35

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #7
  br label %Py_DECREF.exit35

Py_DECREF.exit35:                                 ; preds = %get_current_tstate.exit, %bb.g, %bb.h
  %.not33 = icmp eq ptr %i.n, null
  br i1 %.not33, label %bb.l, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit35
  %i.u = load i32, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.n, align 8, !tbaa !20
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %Py_DECREF.exit35, %get_current_tstate.exit.thread, %bb.i, %bb.j, %bb.k
  %.1 = phi i32 [ -1, %bb.d ], [ -1, %get_current_tstate.exit.thread ], [ -1, %Py_DECREF.exit35 ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ] ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %6)
  %.not.i37 = icmp eq ptr %.022, null
  br i1 %.not.i37, label %Py_XDECREF.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load i32, ptr %.022, align 8, !tbaa !20  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.022, align 8, !tbaa !20
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %.022) #7
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.c
  %.24648 = phi i32 [ -1, %bb.c ], [ %.1, %bb.l ], [ %.1, %bb.m ], [ %.1, %bb.n ], [ %.1, %bb.o ] ; 3 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %.not.i.i39 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i39, label %bb.p, label %Py_XDECREF.exit40

bb.p:                                             ; preds = %Py_XDECREF.exit
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !20
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %Py_XDECREF.exit40

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.a) #7
  br label %Py_XDECREF.exit40

Py_XDECREF.exit40:                                ; preds = %bb.a, %Py_XDECREF.exit, %bb.p, %bb.q
  %.24649 = phi i32 [ %.24648, %bb.q ], [ %.24648, %Py_XDECREF.exit ], [ %.24648, %bb.p ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.24649
}

declare ptr @PyUnicode_FromFormatV(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_PyErr_WarnUnawaitedAgenMethod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyErr_GetRaisedException() #7
  %i.b = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = tail call i32 (ptr, ptr, i64, ptr, ...) @_PyErr_WarnFormat(ptr noundef %0, ptr noundef %i.b, i64 poison, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %i.d)
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @PyErr_SetRaisedException(ptr noundef %i.a) #7
  ret void
}

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_PyErr_WarnFormat(ptr noundef %0, ptr noundef %1, i64 %2, ptr noundef %3, ...) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.a = call ptr @PyUnicode_FromFormatV(ptr noundef %3, ptr noundef nonnull %4) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_PyErr_WarnFormatV.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = load ptr, ptr @PyExc_RuntimeWarning, align 8
  %spec.select.i.i = select i1 %i.c, ptr %i.d, ptr %1
  %i.e = call fastcc ptr @do_warn(ptr noundef nonnull %i.a, ptr noundef %spec.select.i.i, i64 noundef 1, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %warn_unicode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.i, label %bb.d, label %warn_unicode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !20
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %warn_unicode.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #7
  br label %warn_unicode.exit.i

warn_unicode.exit.i:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.f, label %_PyErr_WarnFormatV.exit

bb.f:                                             ; preds = %warn_unicode.exit.i
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !20
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %_PyErr_WarnFormatV.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.a) #7
  br label %_PyErr_WarnFormatV.exit

_PyErr_WarnFormatV.exit:                          ; preds = %bb.a, %warn_unicode.exit.i, %bb.f, %bb.g
  %.0.i = phi i32 [ -1, %bb.a ], [ %.0.i.i, %warn_unicode.exit.i ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.g ]
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0.i
}

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #2

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_PyErr_WarnUnawaitedCoroutine(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call fastcc ptr @get_warnings_attr(ptr noundef %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73888), i32 noundef 1) ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.c, ptr noundef %0) #7 ; 4 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !20
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.e, label %.split12

bb.e:                                             ; preds = %Py_DECREF.exit
  %i.h = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !19
  %i.i = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.h) #7
  %.not15 = icmp eq i32 %i.i, 0
  br label %.split

.split12:                                         ; preds = %Py_DECREF.exit
  %i.j = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.f, label %.split

bb.f:                                             ; preds = %.split12
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !20
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #7
  br label %.split

.split:                                           ; preds = %bb.e, %bb.g, %bb.f, %.split12, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %.not15, %bb.e ], [ false, %bb.g ], [ false, %.split12 ], [ false, %bb.f ]
  %i.m = tail call ptr @PyErr_Occurred() #7
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.4, ptr noundef %0) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split
  br i1 %.1, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !19
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = tail call i32 (ptr, ptr, i64, ptr, ...) @_PyErr_WarnFormat(ptr noundef %0, ptr noundef %i.n, i64 poison, ptr noundef nonnull @.str.5, ptr noundef %i.p)
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_warnings_attr(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_Py_IsInterpreterFinalizing(ptr noundef %0) #7
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @PyImport_Import(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104272)) #7 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_ImportError, align 8, !tbaa !19
  %i.f = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.e) #7
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyErr_Clear() #7
  br label %bb.k

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @_PyImport_GetModules(ptr noundef %0) #7
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @PyImport_GetModule(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104272)) #7 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0 = phi ptr [ %i.h, %bb.g ], [ %i.c, %bb.c ]  ; 4 uses
  %i.j = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %.0, ptr noundef %1, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.k = load i32, ptr %.0, align 8, !tbaa !20    ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %.0, align 8, !tbaa !20
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %Py_DECREF.exit
  %.08 = phi ptr [ null, %bb.f ], [ %i.n, %Py_DECREF.exit ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.08
}

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyWarnings_Init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @warnings_module) #7
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_PyWarnings_Fini(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10768      ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_DECREF.exit31.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not.i30.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i30.i, label %bb.c, label %Py_DECREF.exit31.i

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !20
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit31.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #7
  br label %Py_DECREF.exit31.i

Py_DECREF.exit31.i:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 10776      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %.not23.i = icmp eq ptr %i.g, null
  br i1 %.not23.i, label %Py_DECREF.exit29.i, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit31.i
  store ptr null, ptr %i.f, align 8, !tbaa !19
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i28.i, label %bb.f, label %Py_DECREF.exit29.i

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !20
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit29.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #7
  br label %Py_DECREF.exit29.i

Py_DECREF.exit29.i:                               ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit31.i
  %i.k = getelementptr i8, ptr %0, i64 10784      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 4 uses
  %.not24.i = icmp eq ptr %i.l, null
  br i1 %.not24.i, label %Py_DECREF.exit27.i, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit29.i
  store ptr null, ptr %i.k, align 8, !tbaa !19
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %.not.i26.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i26.i, label %bb.i, label %Py_DECREF.exit27.i

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !20
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit27.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #7
  br label %Py_DECREF.exit27.i

Py_DECREF.exit27.i:                               ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit29.i
  %i.p = getelementptr i8, ptr %0, i64 10824      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 4 uses
  %.not25.i = icmp eq ptr %i.q, null
  br i1 %.not25.i, label %warnings_clear_state.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit27.i
  store ptr null, ptr %i.p, align 8, !tbaa !19
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.l, label %warnings_clear_state.exit

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !20
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %warnings_clear_state.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #7
  br label %warnings_clear_state.exit

warnings_clear_state.exit:                        ; preds = %Py_DECREF.exit27.i, %bb.k, %bb.l, %bb.m
  ret void
}
end_hunk_0
