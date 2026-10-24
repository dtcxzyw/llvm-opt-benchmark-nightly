Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/faulthandler?download=true
inline.NumInlined: 66
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@faulthandler_register_py:bb.a
bb.ap:                                            ; preds = %bb.l, %bb.j, %bb.e, %bb.d, %faulthandler_register_py_impl.exit
  %.038 = phi ptr [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.l ], [ %.0.i, %faulthandler_register_py_impl.exit ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret ptr %.038
}

; Function Attrs: nounwind uwtable
define internal ptr @faulthandler_unregister_py(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #16 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call fastcc ptr @faulthandler_unregister_py_impl(i32 noundef %i.a)
  br label %faulthandler_unregister_py_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.split4, label %faulthandler_unregister_py_impl.exit

.split4:                                          ; preds = %bb.b
  %i.e = load i32, ptr @faulthandler_handlers, align 16, !tbaa !203
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 176), align 16
  %i.h = icmp eq i32 %i.g, -1
  %or.cond16.i.i = select i1 %i.f, i1 true, i1 %i.h
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 352), align 16
  %i.j = icmp eq i32 %i.i, -1
  %or.cond18.i.i = select i1 %or.cond16.i.i, i1 true, i1 %i.j
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 528), align 16
  %i.l = icmp eq i32 %i.k, -1
  %or.cond20.i.i = select i1 %or.cond18.i.i, i1 true, i1 %i.l
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 704), align 16
  %i.n = icmp eq i32 %i.m, -1
  %or.cond22.i.i = select i1 %or.cond20.i.i, i1 true, i1 %i.n
  br i1 %or.cond22.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split4
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !195
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.48) #16
  br label %faulthandler_unregister_py_impl.exit

bb.d:                                             ; preds = %.split4
  %i.p = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !195
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.47, i32 noundef -1) #16 ; 0 uses
  br label %faulthandler_unregister_py_impl.exit

faulthandler_unregister_py_impl.exit:             ; preds = %bb.c, %bb.d, %.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %.split ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @faulthandler__sigsegv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.rlimit, align 8             ; 5 uses
  %4 = alloca %struct.rlimit, align 8             ; 5 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.11, i64 noundef %2, i64 noundef 0, i64 noundef 1) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %faulthandler__sigsegv_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !195
  %i.d = tail call i32 @PyObject_IsTrue(ptr noundef %i.c) #16 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %faulthandler__sigsegv_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @PyEval_SaveThread() #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.g = call i32 @getrlimit64(i32 noundef 4, ptr noundef nonnull %4) #16
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %faulthandler_raise_sigsegv.exit.i

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %4, align 8, !tbaa !220
  %i.i = call i32 @setrlimit64(i32 noundef 4, ptr noundef nonnull %4) #16 ; 0 uses
  br label %faulthandler_raise_sigsegv.exit.i

faulthandler_raise_sigsegv.exit.i:                ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.j = call i32 @raise(i32 noundef 11) #16      ; 0 uses
  call void @PyEval_RestoreThread(ptr noundef %i.f) #16
  br label %faulthandler__sigsegv_impl.exit

.thread:                                          ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.k = call i32 @getrlimit64(i32 noundef 4, ptr noundef nonnull %3) #16
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %faulthandler_raise_sigsegv.exit1.i

bb.h:                                             ; preds = %.thread
  store i64 0, ptr %3, align 8, !tbaa !220
  %i.m = call i32 @setrlimit64(i32 noundef 4, ptr noundef nonnull %3) #16 ; 0 uses
  br label %faulthandler_raise_sigsegv.exit1.i

faulthandler_raise_sigsegv.exit1.i:               ; preds = %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.n = call i32 @raise(i32 noundef 11) #16      ; 0 uses
  br label %faulthandler__sigsegv_impl.exit

faulthandler__sigsegv_impl.exit:                  ; preds = %faulthandler_raise_sigsegv.exit1.i, %faulthandler_raise_sigsegv.exit.i, %bb.d, %bb.b
  %.09 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %faulthandler_raise_sigsegv.exit.i ], [ @_Py_NoneStruct, %faulthandler_raise_sigsegv.exit1.i ]
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define internal ptr @faulthandler__fatal_error_c_thread(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.rlimit, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = call i32 @getrlimit64(i32 noundef 4, ptr noundef nonnull %2) #16
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %faulthandler_suppress_crash_report.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !220
  %i.c = call i32 @setrlimit64(i32 noundef 4, ptr noundef nonnull %2) #16 ; 0 uses
  br label %faulthandler_suppress_crash_report.exit.i

faulthandler_suppress_crash_report.exit.i:        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.d = call ptr @PyThread_allocate_lock() #16   ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %faulthandler_suppress_crash_report.exit.i
  %i.f = call ptr @PyErr_NoMemory() #16
  br label %faulthandler__fatal_error_c_thread_impl.exit

bb.d:                                             ; preds = %faulthandler_suppress_crash_report.exit.i
  %i.g = call i32 @PyThread_acquire_lock(ptr noundef nonnull %i.d, i32 noundef 1) #16 ; 0 uses
  %i.h = call i64 @PyThread_start_new_thread(ptr noundef nonnull @faulthandler_fatal_error_thread, ptr noundef nonnull %i.d) #16
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @PyThread_free_lock(ptr noundef nonnull %i.d) #16
  %i.j = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !195
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.49) #16
  br label %faulthandler__fatal_error_c_thread_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.k = call i32 @PyThread_acquire_lock(ptr noundef nonnull %i.d, i32 noundef 1) #16 ; 0 uses
  call void @PyThread_release_lock(ptr noundef nonnull %i.d) #16
  call void @PyThread_free_lock(ptr noundef nonnull %i.d) #16
  br label %faulthandler__fatal_error_c_thread_impl.exit

faulthandler__fatal_error_c_thread_impl.exit:     ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: cold noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @faulthandler__sigabrt(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  tail call fastcc void @faulthandler_suppress_crash_report()
  tail call void @abort() #18
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @faulthandler__sigfpe(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  tail call fastcc void @faulthandler_suppress_crash_report()
  %i.a = tail call i32 @raise(i32 noundef 8) #16  ; 0 uses
  unreachable
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @faulthandler__stack_overflow(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.rlimit, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = call i32 @getrlimit64(i32 noundef 4, ptr noundef nonnull %2) #16
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %faulthandler__stack_overflow_impl.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !220
  %i.d = call i32 @setrlimit64(i32 noundef 4, ptr noundef nonnull %2) #16 ; 0 uses
  br label %faulthandler__stack_overflow_impl.exit

faulthandler__stack_overflow_impl.exit:           ; preds = %bb.a, %bb.b
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store i64 0, ptr %i.a, align 8, !tbaa !211
  %i.f = icmp ugt ptr %i.a, inttoptr (i64 104857599 to ptr)
  %i.g = add i64 %i.e, -104857600
  %.013.i = select i1 %i.f, i64 %i.g, i64 0
  %i.h = icmp ult ptr %i.a, inttoptr (i64 -104857600 to ptr)
  %i.i = add nuw i64 %i.e, 104857600
  %.0.i = select i1 %i.h, i64 %i.i, i64 -1
  %i.j = call fastcc i64 @stack_overflow(i64 noundef %.013.i, i64 noundef %.0.i, ptr noundef %i.a)
  %i.k = sub nsw i64 %i.j, %i.e
  %.014.i = call i64 @llvm.abs.i64(i64 %i.k, i1 true)
  %i.l = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !195
  %i.m = load i64, ptr %i.a, align 8, !tbaa !211
  %i.n = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.51, i64 noundef %.014.i, i64 noundef %i.m) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr null
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @faulthandler_get_fileno(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !195    ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %i.b, @_Py_NoneStruct
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PySys_GetAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100800)) #16 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit48, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.g, label %bb.d, label %Py_INCREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !195
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.20) #16
  %i.i = load i32, ptr %i.e, align 8, !tbaa !188  ; 2 uses
  %.not.i47 = icmp sgt i32 %i.i, -1
  br i1 %.not.i47, label %bb.e, label %Py_DECREF.exit48

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !188
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %Py_DECREF.exit48

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #16
  br label %Py_DECREF.exit48

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 8
  %.val52 = load ptr, ptr %i.l, align 8, !tbaa !237 ; 2 uses
  %i.m = getelementptr i8, ptr %.val52, i64 168
  %.val54 = load i64, ptr %i.m, align 8, !tbaa !242
  %i.n = and i64 %.val54, 16777216
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not56 = icmp eq ptr %.val52, @PyBool_Type
  br i1 %.not56, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !195
  %i.p = tail call i32 @PyErr_WarnEx(ptr noundef %i.o, ptr noundef nonnull @.str.21, i64 noundef 1) #16
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %bb.j, label %Py_DECREF.exit48

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = tail call i32 @PyLong_AsInt(ptr noundef nonnull %i.b) #16 ; 3 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @PyErr_Occurred() #16
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %.thread, label %Py_DECREF.exit48

bb.l:                                             ; preds = %bb.j
  %i.t = icmp slt i32 %i.q, 0
  br i1 %i.t, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !195
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.22) #16
  br label %Py_DECREF.exit48

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %0, align 8, !tbaa !195
  br label %Py_DECREF.exit48

bb.n:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %Py_INCREF.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !188
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.o, %bb.n, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.n ], [ %i.b, %bb.o ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0, ptr %i.a, align 8, !tbaa !195
  %i.y = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83992), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.p, label %bb.s

bb.p:                                             ; preds = %Py_INCREF.exit
  %i.aa = load i32, ptr %.0, align 8, !tbaa !188  ; 2 uses
  %.not.i45 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i45, label %bb.q, label %Py_DECREF.exit48

bb.q:                                             ; preds = %bb.p
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %.0, align 8, !tbaa !188
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.r, label %Py_DECREF.exit48

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_DECREF.exit48

bb.s:                                             ; preds = %Py_INCREF.exit
  %i.ad = getelementptr i8, ptr %i.y, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !237
  %i.ae = getelementptr i8, ptr %.val, i64 168
  %.val53 = load i64, ptr %i.ae, align 8, !tbaa !242
  %i.af = and i64 %.val53, 16777216
  %.not42 = icmp eq i64 %i.af, 0
  br i1 %.not42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = call i64 @PyLong_AsLong(ptr noundef nonnull %i.y) #16 ; 2 uses
  %or.cond3 = icmp ult i64 %i.ag, 2147483647
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %spec.select = select i1 %or.cond3, i32 %i.ah, i32 -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.032 = phi i32 [ -1, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !188 ; 2 uses
  %.not.i43 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i43, label %bb.v, label %Py_DECREF.exit44

bb.v:                                             ; preds = %bb.u
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.y, align 8, !tbaa !188
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.w, label %Py_DECREF.exit44

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #16
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.u, %bb.v, %bb.w
  %i.al = icmp eq i32 %.032, -1
  br i1 %i.al, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %Py_DECREF.exit44
  %i.am = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !195
  call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.23) #16
  %i.an = load i32, ptr %.0, align 8, !tbaa !188  ; 2 uses
  %.not.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit48

bb.y:                                             ; preds = %bb.x
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %.0, align 8, !tbaa !188
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.z, label %Py_DECREF.exit48

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_DECREF.exit48

bb.aa:                                            ; preds = %Py_DECREF.exit44
  %i.aq = call i32 @_PyFile_Flush(ptr noundef nonnull %.0) #16
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @PyErr_Clear() #16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %.0, ptr %0, align 8, !tbaa !195
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.z, %bb.y, %bb.x, %bb.r, %bb.q, %bb.p, %bb.f, %bb.e, %bb.d, %bb.k, %bb.i, %bb.b, %bb.ac, %bb.m, %.thread
  %.033 = phi i32 [ %i.q, %bb.m ], [ -1, %bb.k ], [ -1, %bb.f ], [ -1, %bb.r ], [ %.032, %bb.ac ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %.thread ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.z ]
  ret i32 %.033
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

end_hunk_0
begin_hunk_1_@faulthandler_user:bb.a
  store volatile i32 0, ptr @faulthandler_dump_traceback.reentrant, align 4, !tbaa !11
  br label %faulthandler_dump_traceback.exit

faulthandler_dump_traceback.exit:                 ; preds = %bb.b, %bb.h
  %i.o = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !218
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %faulthandler_dump_traceback.exit
  %i.q = getelementptr i8, ptr %i.e, i64 32
  %i.r = tail call i32 @sigaction(i32 noundef %0, ptr noundef %i.q, ptr noundef null) #16 ; 0 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !11
  %i.s = tail call i32 @raise(i32 noundef %0) #16 ; 0 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !11
  %i.u = load i32, ptr %i.o, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr @faulthandler_user, ptr %1, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = call i32 @sigemptyset(ptr noundef nonnull %i.v) #16, !inline_history !0 ; 0 uses
  %.not.i13 = icmp eq i32 %i.u, 0
  %spec.select.i = select i1 %.not.i13, i32 402653184, i32 1207959552
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %spec.select.i, ptr %i.x, align 8, !tbaa !210
  %i.y = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #16, !inline_history !0 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  store i32 %i.t, ptr %i.a, align 4, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %faulthandler_dump_traceback.exit, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @faulthandler_unregister_py_impl(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @faulthandler_handlers, align 16, !tbaa !203
  %i.b = icmp eq i32 %i.a, %0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 176), align 16
  %i.d = icmp eq i32 %i.c, %0
  %or.cond16.i = select i1 %i.b, i1 true, i1 %i.d
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 352), align 16
  %i.f = icmp eq i32 %i.e, %0
  %or.cond18.i = select i1 %or.cond16.i, i1 true, i1 %i.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 528), align 16
  %i.h = icmp eq i32 %i.g, %0
  %or.cond20.i = select i1 %or.cond18.i, i1 true, i1 %i.h
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 704), align 16
  %i.j = icmp eq i32 %i.i, %0
  %or.cond22.i = select i1 %or.cond20.i, i1 true, i1 %i.j
  br i1 %or.cond22.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %0, -65
  %or.cond.i = icmp ult i32 %i.k, -64
  br i1 %or.cond.i, label %bb.d, label %check_signum.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !195
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.47, i32 noundef %0) #16 ; 0 uses
  br label %check_signum.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !195
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.48) #16
  br label %check_signum.exit.thread

check_signum.exit:                                ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10296), align 8, !tbaa !191 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %check_signum.exit.thread, label %bb.e

bb.e:                                             ; preds = %check_signum.exit
  %i.q = zext nneg i32 %0 to i64
  %i.r = getelementptr [192 x i8], ptr %i.o, i64 %i.q ; 5 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !194
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %faulthandler_unregister.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !194
  %i.t = getelementptr i8, ptr %i.r, i64 32
  %i.u = tail call i32 @sigaction(i32 noundef %0, ptr noundef %i.t, ptr noundef null) #16 ; 0 uses
  %i.v = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195  ; 4 uses
  %.not11.i = icmp eq ptr %i.w, null
  br i1 %.not11.i, label %Py_DECREF.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.v, align 8, !tbaa !195
  %i.x = load i32, ptr %i.w, align 8, !tbaa !188  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !188
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #16
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.aa = getelementptr i8, ptr %i.r, i64 16
  store i32 -1, ptr %i.aa, align 8, !tbaa !196
  br label %faulthandler_unregister.exit

faulthandler_unregister.exit:                     ; preds = %bb.e, %Py_DECREF.exit.i
  %.0.i = phi i64 [ 1, %Py_DECREF.exit.i ], [ 0, %bb.e ]
  %i.ab = tail call ptr @PyBool_FromLong(i64 noundef %.0.i) #16
  br label %check_signum.exit.thread

check_signum.exit.thread:                         ; preds = %bb.c, %bb.d, %check_signum.exit, %faulthandler_unregister.exit
  %.0 = phi ptr [ @_Py_FalseStruct, %check_signum.exit ], [ %i.ab, %faulthandler_unregister.exit ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @faulthandler_suppress_crash_report() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.rlimit, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.a = call i32 @getrlimit64(i32 noundef 4, ptr noundef nonnull %0) #16
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !tbaa !220
  %i.c = call i32 @setrlimit64(i32 noundef 4, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare i32 @getrlimit64(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setrlimit64(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal void @faulthandler_fatal_error_thread(ptr nofree readnone captures(none) %0) #6 {
bb.a:
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.faulthandler_fatal_error_thread, ptr noundef nonnull @.str.50) #18
  unreachable
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @stack_overflow(i64 noundef range(i64 0, -104857600) %0, i64 noundef range(i64 104857600, 0) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !211
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %2, align 8, !tbaa !211
  %i.e = icmp ugt i64 %0, %i.b
  %i.f = icmp ult i64 %1, %i.b
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store volatile i8 1, ptr %i.a, align 16, !tbaa !188
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4095
  store volatile i8 0, ptr %i.g, align 1, !tbaa !188
  %i.h = call fastcc i64 @stack_overflow(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @PyExec_faulthandler(ptr nofree readnone captures(none) %0) #15 {
bb.a:
  ret i32 0
}

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallNoArgs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"_runtime_state", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_interpreter_state", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120}
!15 = !{!"_thread_state", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!16 = !{!"", !12, i64 0}
!17 = !{!"_interpreter_frame", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!18 = !{!"_code_object", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80}
!19 = !{!"_pyobject", !12, i64 0, !12, i64 8}
!20 = !{!"_type_object", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!21 = !{!"_tuple_object", !12, i64 0, !12, i64 8, !12, i64 16}
!22 = !{!"_list_object", !12, i64 0, !12, i64 8, !12, i64 16}
!23 = !{!"_set_object", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!24 = !{!"_dict_object", !12, i64 0, !12, i64 8, !12, i64 16}
!25 = !{!"_float_object", !12, i64 0, !12, i64 8}
!26 = !{!"_long_object", !12, i64 0, !12, i64 8, !12, i64 16}
!27 = !{!"_bytes_object", !12, i64 0, !12, i64 8, !12, i64 16}
!28 = !{!"_unicode_object", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!29 = !{!"_gc", !12, i64 0, !12, i64 8, !12, i64 16}
!30 = !{!"_gen_object", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!31 = !{!"_llist_node", !12, i64 0, !12, i64 8}
!32 = !{!"_debugger_support", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!33 = !{!"_Py_DebugOffsets", !9, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 48, !15, i64 176, !16, i64 296, !17, i64 304, !18, i64 368, !19, i64 456, !20, i64 472, !21, i64 504, !22, i64 528, !23, i64 552, !24, i64 584, !25, i64 608, !26, i64 624, !27, i64 648, !28, i64 672, !29, i64 704, !30, i64 728, !31, i64 760, !32, i64 776}
!34 = !{!"any pointer", !9, i64 0}
!35 = !{!"p1 _ZTS3_ts", !34, i64 0}
!36 = !{!"PyMutex", !9, i64 0}
!37 = !{!"p1 _ZTS3_is", !34, i64 0}
!38 = !{!"pyinterpreters", !36, i64 0, !37, i64 8, !37, i64 16, !12, i64 24}
!39 = !{!"p1 _ZTS12_xid_regitem", !34, i64 0}
!40 = !{!"", !10, i64 0, !10, i64 4, !36, i64 8, !39, i64 16}
!41 = !{!"_xid_lookup_state", !40, i64 0}
!42 = !{!"", !41, i64 0}
!43 = !{!"", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32}
!44 = !{!"", !43, i64 0, !43, i64 40, !43, i64 80}
!45 = !{!"", !9, i64 0, !43, i64 8}
!46 = !{!"", !45, i64 0, !45, i64 48, !45, i64 96}
!47 = !{!"", !34, i64 0, !34, i64 8, !34, i64 16}
!48 = !{!"_pymem_allocators", !36, i64 0, !44, i64 8, !46, i64 128, !10, i64 272, !10, i64 276, !47, i64 280}
!49 = !{!"_obmalloc_global_state", !10, i64 0, !12, i64 8}
!50 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16}
!51 = !{!"pyhash_runtime_state", !50, i64 0}
!52 = !{!"", !34, i64 0, !9, i64 8}
!53 = !{!"p1 _ZTS10llist_node", !34, i64 0}
!54 = !{!"llist_node", !53, i64 0, !53, i64 8}
!55 = !{!"_pythread_runtime_state", !10, i64 0, !52, i64 8, !54, i64 24}
!56 = !{!"", !10, i64 0, !10, i64 4}
!57 = !{!"p1 _ZTS7_object", !34, i64 0}
!58 = !{!"_signals_runtime_state", !9, i64 0, !56, i64 1040, !10, i64 1048, !57, i64 1056, !57, i64 1064, !10, i64 1072}
!59 = !{!"_Py_tss_t", !10, i64 0, !10, i64 4}
!60 = !{!"any p2 pointer", !34, i64 0}
!61 = !{!"p2 int", !60, i64 0}
!62 = !{!"", !12, i64 0, !61, i64 8}
!63 = !{!"_expr", !10, i64 0, !9, i64 8, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52}
!64 = !{!"_parser_runtime_state", !10, i64 0, !63, i64 8}
!65 = !{!"_atexit_runtime_state", !36, i64 0, !9, i64 8, !10, i64 264}
!66 = !{!"p1 _ZTS8_inittab", !34, i64 0}
!67 = !{!"p1 _ZTS15_Py_hashtable_t", !34, i64 0}
!68 = !{!"", !36, i64 0, !67, i64 8}
!69 = !{!"p1 omnipotent char", !34, i64 0}
!70 = !{!"_import_runtime_state", !66, i64 0, !12, i64 8, !68, i64 16, !69, i64 32}
!71 = !{!"p1 _ZTS13code_arena_st", !34, i64 0}
!72 = !{!"trampoline_api_st", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !12, i64 32, !12, i64 40}
!73 = !{!"p1 _ZTS8_IO_FILE", !34, i64 0}
!74 = !{!"", !10, i64 0, !10, i64 4, !12, i64 8, !71, i64 16, !72, i64 24, !73, i64 72, !12, i64 80, !34, i64 88, !12, i64 96, !10, i64 104}
!75 = !{!"_pending_calls", !35, i64 0, !36, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !9, i64 24, !10, i64 7224, !10, i64 7228}
!76 = !{!"_ceval_runtime_state", !74, i64 0, !75, i64 112}
!77 = !{!"_gilstate_runtime_state", !10, i64 0, !37, i64 8}
!78 = !{!"p1 _ZTS13_PyArg_Parser", !34, i64 0}
!79 = !{!"_getargs_runtime_state", !78, i64 0}
!80 = !{!"_fileutils_state", !10, i64 0}
!81 = !{!"", !10, i64 0, !57, i64 8, !10, i64 16, !10, i64 20, !37, i64 24, !10, i64 32}
!82 = !{!"long long", !9, i64 0}
!83 = !{!"", !57, i64 0, !10, i64 8, !82, i64 16, !10, i64 24, !37, i64 32, !10, i64 40, !69, i64 48, !12, i64 56, !34, i64 64, !34, i64 72}
!84 = !{!"p1 _ZTS24faulthandler_user_signal", !34, i64 0}
!85 = !{!"", !34, i64 0, !10, i64 8, !12, i64 16}
!86 = !{!"_faulthandler_runtime_state", !81, i64 0, !83, i64 40, !84, i64 120, !85, i64 128, !85, i64 152}
!87 = !{!"_PyTraceMalloc_Config", !10, i64 0, !10, i64 4, !10, i64 8}
!88 = !{!"p1 _ZTS21tracemalloc_traceback", !34, i64 0}
!89 = !{!"_tracemalloc_runtime_state", !87, i64 0, !44, i64 16, !36, i64 136, !12, i64 144, !12, i64 152, !67, i64 160, !88, i64 168, !67, i64 176, !67, i64 184, !67, i64 192, !88, i64 200, !59, i64 208}
!90 = !{!"_reftracer_runtime_state", !34, i64 0, !34, i64 8}
!91 = !{!"_Bool", !9, i64 0}
!92 = !{!"", !9, i64 0}
!93 = !{!"_stoptheworld_state", !36, i64 0, !91, i64 1, !91, i64 2, !91, i64 3, !92, i64 4, !12, i64 8, !35, i64 16}
!94 = !{!"PyPreConfig", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!95 = !{!"p1 _ZTS18_Py_AuditHookEntry", !34, i64 0}
!96 = !{!"", !36, i64 0, !95, i64 8}
!97 = !{!"_py_object_runtime_state", !10, i64 0}
!98 = !{!"_Py_float_runtime_state", !10, i64 0, !10, i64 4}
!99 = !{!"_Py_unicode_runtime_ids", !36, i64 0, !12, i64 8}
!100 = !{!"_Py_unicode_runtime_state", !99, i64 0}
!101 = !{!"_types_runtime_state", !10, i64 0, !92, i64 8}
!102 = !{!"_Py_time_runtime_state", !9, i64 0}
!103 = !{!"_Py_cached_objects", !67, i64 0}
!104 = !{!"p1 _ZTS11_typeobject", !34, i64 0}
!105 = !{!"_object", !9, i64 0, !104, i64 8}
!106 = !{!"PyVarObject", !105, i64 0, !12, i64 16}
!107 = !{!"", !106, i64 0, !12, i64 24, !9, i64 32}
!108 = !{!"_PyUnicodeObject_state", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0}
!109 = !{!"", !105, i64 0, !12, i64 16, !12, i64 24, !108, i64 32}
!110 = !{!"", !109, i64 0, !9, i64 40}
!111 = !{!"", !110, i64 0, !110, i64 56, !110, i64 112, !110, i64 168, !110, i64 224, !110, i64 280, !110, i64 328, !110, i64 384, !110, i64 440, !110, i64 496, !110, i64 544, !110, i64 592, !110, i64 640, !110, i64 696, !110, i64 752, !110, i64 800, !110, i64 848, !110, i64 896, !110, i64 952, !110, i64 1008, !110, i64 1064, !110, i64 1128, !110, i64 1184, !110, i64 1232, !110, i64 1288}
!112 = !{!"", !110, i64 0, !110, i64 56, !110, i64 112, !110, i64 168, !110, i64 224, !110, i64 280, !110, i64 336, !110, i64 392, !110, i64 448, !110, i64 504, !110, i64 552, !110, i64 600, !110, i64 656, !110, i64 704, !110, i64 760, !110, i64 816, !110, i64 872, !110, i64 928, !110, i64 984, !110, i64 1032, !110, i64 1080, !110, i64 1136, !110, i64 1184, !110, i64 1240, !110, i64 1304, !110, i64 1360, !110, i64 1416, !110, i64 1464, !110, i64 1528, !110, i64 1576, !110, i64 1632, !110, i64 1688, !110, i64 1744, !110, i64 1792, !110, i64 1840, !110, i64 1896, !110, i64 1952, !110, i64 2016, !110, i64 2072, !110, i64 2136, !110, i64 2192, !110, i64 2248, !110, i64 2304, !110, i64 2360, !110, i64 2416, !110, i64 2472, !110, i64 2528, !110, i64 2584, !110, i64 2640, !110, i64 2696, !110, i64 2752, !110, i64 2808, !110, i64 2872, !110, i64 2928, !110, i64 2984, !110, i64 3048, !110, i64 3104, !110, i64 3176, !110, i64 3232, !110, i64 3304, !110, i64 3352, !110, i64 3408, !110, i64 3464, !110, i64 3520, !110, i64 3576, !110, i64 3632, !110, i64 3680, !110, i64 3736, !110, i64 3784, !110, i64 3840, !110, i64 3888, !110, i64 3944, !110, i64 4000, !110, i64 4056, !110, i64 4112, !110, i64 4168, !110, i64 4224, !110, i64 4280, !110, i64 4336, !110, i64 4384, !110, i64 4432, !110, i64 4488, !110, i64 4552, !110, i64 4608, !110, i64 4664, !110, i64 4720, !110, i64 4784, !110, i64 4840, !110, i64 4888, !110, i64 4944, !110, i64 5000, !110, i64 5056, !110, i64 5112, !110, i64 5168, !110, i64 5224, !110, i64 5280, !110, i64 5336, !110, i64 5392, !110, i64 5448, !110, i64 5504, !110, i64 5568, !110, i64 5632, !110, i64 5680, !110, i64 5736, !110, i64 5784, !110, i64 5840, !110, i64 5896, !110, i64 5960, !110, i64 6016, !110, i64 6072, !110, i64 6128, !110, i64 6184, !110, i64 6240, !110, i64 6304, !110, i64 6352, !110, i64 6400, !110, i64 6456, !110, i64 6512, !110, i64 6568, !110, i64 6624, !110, i64 6672, !110, i64 6728, !110, i64 6784, !110, i64 6840, !110, i64 6896, !110, i64 6944, !110, i64 7000, !110, i64 7056, !110, i64 7104, !110, i64 7160, !110, i64 7208, !110, i64 7256, !110, i64 7304, !110, i64 7360, !110, i64 7416, !110, i64 7472, !110, i64 7528, !110, i64 7576, !110, i64 7632, !110, i64 7688, !110, i64 7744, !110, i64 7800, !110, i64 7856, !110, i64 7904, !110, i64 7952, !110, i64 8008, !110, i64 8064, !110, i64 8120, !110, i64 8176, !110, i64 8232, !110, i64 8288, !110, i64 8344, !110, i64 8408, !110, i64 8464, !110, i64 8520, !110, i64 8576, !110, i64 8632, !110, i64 8688, !110, i64 8744, !110, i64 8800, !110, i64 8848, !110, i64 8904, !110, i64 8960, !110, i64 9016, !110, i64 9072, !110, i64 9128, !110, i64 9184, !110, i64 9240, !110, i64 9288, !110, i64 9344, !110, i64 9400, !110, i64 9456, !110, i64 9512, !110, i64 9568, !110, i64 9624, !110, i64 9680, !110, i64 9736, !110, i64 9800, !110, i64 9848, !110, i64 9896, !110, i64 9960, !110, i64 10024, !110, i64 10080, !110, i64 10136, !110, i64 10192, !110, i64 10272, !110, i64 10344, !110, i64 10408, !110, i64 10480, !110, i64 10544, !110, i64 10608, !110, i64 10664, !110, i64 10712, !110, i64 10768, !110, i64 10824, !110, i64 10872, !110, i64 10928, !110, i64 10984, !110, i64 11040, !110, i64 11112, !110, i64 11168, !110, i64 11224, !110, i64 11280, !110, i64 11336, !110, i64 11400, !110, i64 11456, !110, i64 11512, !110, i64 11568, !110, i64 11624, !110, i64 11680, !110, i64 11736, !110, i64 11784, !110, i64 11840, !110, i64 11904, !110, i64 11960, !110, i64 12016, !110, i64 12064, !110, i64 12128, !110, i64 12192, !110, i64 12248, !110, i64 12296, !110, i64 12360, !110, i64 12408, !110, i64 12472, !110, i64 12528, !110, i64 12584, !110, i64 12640, !110, i64 12696, !110, i64 12752, !110, i64 12808, !110, i64 12872, !110, i64 12944, !110, i64 13008, !110, i64 13056, !110, i64 13128, !110, i64 13200, !110, i64 13256, !110, i64 13304, !110, i64 13352, !110, i64 13400, !110, i64 13448, !110, i64 13512, !110, i64 13560, !110, i64 13616, !110, i64 13672, !110, i64 13720, !110, i64 13768, !110, i64 13816, !110, i64 13872, !110, i64 13928, !110, i64 13976, !110, i64 14024, !110, i64 14072, !110, i64 14120, !110, i64 14168, !110, i64 14224, !110, i64 14272, !110, i64 14336, !110, i64 14384, !110, i64 14432, !110, i64 14480, !110, i64 14536, !110, i64 14592, !110, i64 14648, !110, i64 14696, !110, i64 14744, !110, i64 14792, !110, i64 14848, !110, i64 14904, !110, i64 14960, !110, i64 15008, !110, i64 15064, !110, i64 15112, !110, i64 15160, !110, i64 15216, !110, i64 15272, !110, i64 15328, !110, i64 15376, !110, i64 15424, !110, i64 15480, !110, i64 15536, !110, i64 15592, !110, i64 15648, !110, i64 15696, !110, i64 15752, !110, i64 15800, !110, i64 15856, !110, i64 15920, !110, i64 15976, !110, i64 16024, !110, i64 16080, !110, i64 16144, !110, i64 16208, !110, i64 16256, !110, i64 16304, !110, i64 16352, !110, i64 16416, !110, i64 16472, !110, i64 16528, !110, i64 16584, !110, i64 16632, !110, i64 16680, !110, i64 16736, !110, i64 16792, !110, i64 16840, !110, i64 16896, !110, i64 16944, !110, i64 17008, !110, i64 17056, !110, i64 17104, !110, i64 17152, !110, i64 17200, !110, i64 17248, !110, i64 17296, !110, i64 17352, !110, i64 17408, !110, i64 17456, !110, i64 17512, !110, i64 17576, !110, i64 17632, !110, i64 17688, !110, i64 17744, !110, i64 17800, !110, i64 17864, !110, i64 17920, !110, i64 17968, !110, i64 18024, !110, i64 18080, !110, i64 18144, !110, i64 18200, !110, i64 18256, !110, i64 18312, !110, i64 18360, !110, i64 18416, !110, i64 18472, !110, i64 18520, !110, i64 18576, !110, i64 18632, !110, i64 18688, !110, i64 18736, !110, i64 18784, !110, i64 18832, !110, i64 18888, !110, i64 18944, !110, i64 18992, !110, i64 19040, !110, i64 19088, !110, i64 19136, !110, i64 19184, !110, i64 19240, !110, i64 19288, !110, i64 19336, !110, i64 19400, !110, i64 19448, !110, i64 19504, !110, i64 19552, !110, i64 19600, !110, i64 19648, !110, i64 19696, !110, i64 19744, !110, i64 19792, !110, i64 19840, !110, i64 19896, !110, i64 19944, !110, i64 19992, !110, i64 20048, !110, i64 20104, !110, i64 20160, !110, i64 20208, !110, i64 20256, !110, i64 20320, !110, i64 20368, !110, i64 20424, !110, i64 20480, !110, i64 20528, !110, i64 20576, !110, i64 20632, !110, i64 20688, !110, i64 20736, !110, i64 20784, !110, i64 20832, !110, i64 20888, !110, i64 20936, !110, i64 20992, !110, i64 21048, !110, i64 21104, !110, i64 21160, !110, i64 21216, !110, i64 21264, !110, i64 21320, !110, i64 21368, !110, i64 21424, !110, i64 21480, !110, i64 21536, !110, i64 21584, !110, i64 21640, !110, i64 21688, !110, i64 21736, !110, i64 21784, !110, i64 21840, !110, i64 21888, !110, i64 21936, !110, i64 21992, !110, i64 22040, !110, i64 22096, !110, i64 22152, !110, i64 22208, !110, i64 22272, !110, i64 22320, !110, i64 22368, !110, i64 22424, !110, i64 22472, !110, i64 22528, !110, i64 22584, !110, i64 22632, !110, i64 22688, !110, i64 22736, !110, i64 22784, !110, i64 22832, !110, i64 22880, !110, i64 22928, !110, i64 22976, !110, i64 23024, !110, i64 23072, !110, i64 23120, !110, i64 23176, !110, i64 23232, !110, i64 23280, !110, i64 23336, !110, i64 23392, !110, i64 23440, !110, i64 23488, !110, i64 23536, !110, i64 23592, !110, i64 23648, !110, i64 23696, !110, i64 23744, !110, i64 23792, !110, i64 23848, !110, i64 23904, !110, i64 23952, !110, i64 24008, !110, i64 24064, !110, i64 24120, !110, i64 24176, !110, i64 24232, !110, i64 24288, !110, i64 24336, !110, i64 24384, !110, i64 24440, !110, i64 24488, !110, i64 24536, !110, i64 24584, !110, i64 24640, !110, i64 24688, !110, i64 24744, !110, i64 24800, !110, i64 24856, !110, i64 24912, !110, i64 24960, !110, i64 25016, !110, i64 25064, !110, i64 25112, !110, i64 25168, !110, i64 25216, !110, i64 25264, !110, i64 25320, !110, i64 25376, !110, i64 25432, !110, i64 25480, !110, i64 25528, !110, i64 25576, !110, i64 25624, !110, i64 25672, !110, i64 25720, !110, i64 25768, !110, i64 25816, !110, i64 25872, !110, i64 25920, !110, i64 25976, !110, i64 26024, !110, i64 26080, !110, i64 26136, !110, i64 26184, !110, i64 26240, !110, i64 26296, !110, i64 26344, !110, i64 26400, !110, i64 26448, !110, i64 26504, !110, i64 26560, !110, i64 26616, !110, i64 26664, !110, i64 26720, !110, i64 26776, !110, i64 26832, !110, i64 26888, !110, i64 26936, !110, i64 26992, !110, i64 27040, !110, i64 27096, !110, i64 27152, !110, i64 27208, !110, i64 27256, !110, i64 27312, !110, i64 27368, !110, i64 27416, !110, i64 27472, !110, i64 27520, !110, i64 27576, !110, i64 27632, !110, i64 27680, !110, i64 27736, !110, i64 27792, !110, i64 27848, !110, i64 27896, !110, i64 27944, !110, i64 27992, !110, i64 28040, !110, i64 28096, !110, i64 28152, !110, i64 28200, !110, i64 28248, !110, i64 28304, !110, i64 28352, !110, i64 28400, !110, i64 28448, !110, i64 28496, !110, i64 28544, !110, i64 28592, !110, i64 28640, !110, i64 28688, !110, i64 28744, !110, i64 28792, !110, i64 28840, !110, i64 28896, !110, i64 28952, !110, i64 29008, !110, i64 29064, !110, i64 29120, !110, i64 29168, !110, i64 29224, !110, i64 29272, !110, i64 29320, !110, i64 29368, !110, i64 29416, !110, i64 29464, !110, i64 29512, !110, i64 29568, !110, i64 29616, !110, i64 29664, !110, i64 29712, !110, i64 29760, !110, i64 29808, !110, i64 29864, !110, i64 29912, !110, i64 29968, !110, i64 30016, !110, i64 30064, !110, i64 30112, !110, i64 30168, !110, i64 30224, !110, i64 30280, !110, i64 30328, !110, i64 30376, !110, i64 30424, !110, i64 30480, !110, i64 30536, !110, i64 30592, !110, i64 30648, !110, i64 30696, !110, i64 30752, !110, i64 30808, !110, i64 30856, !110, i64 30912, !110, i64 30968, !110, i64 31024, !110, i64 31072, !110, i64 31120, !110, i64 31168, !110, i64 31216, !110, i64 31264, !110, i64 31320, !110, i64 31368, !110, i64 31416, !110, i64 31464, !110, i64 31512, !110, i64 31560, !110, i64 31608, !110, i64 31656, !110, i64 31712, !110, i64 31776, !110, i64 31840, !110, i64 31888, !110, i64 31944, !110, i64 32008, !110, i64 32064, !110, i64 32112, !110, i64 32160, !110, i64 32208, !110, i64 32264, !110, i64 32320, !110, i64 32368, !110, i64 32424, !110, i64 32472, !110, i64 32520, !110, i64 32576, !110, i64 32632, !110, i64 32680, !110, i64 32728, !110, i64 32776, !110, i64 32824, !110, i64 32872, !110, i64 32920, !110, i64 32968, !110, i64 33016, !110, i64 33072, !110, i64 33128, !110, i64 33184, !110, i64 33240, !110, i64 33304, !110, i64 33360, !110, i64 33408, !110, i64 33456, !110, i64 33504, !110, i64 33552, !110, i64 33600, !110, i64 33656, !110, i64 33712, !110, i64 33760, !110, i64 33808, !110, i64 33856, !110, i64 33904, !110, i64 33952, !110, i64 34008, !110, i64 34056, !110, i64 34112, !110, i64 34160, !110, i64 34208, !110, i64 34256, !110, i64 34312, !110, i64 34360, !110, i64 34416, !110, i64 34464, !110, i64 34512, !110, i64 34560, !110, i64 34616, !110, i64 34672, !110, i64 34720, !110, i64 34776, !110, i64 34824, !110, i64 34880, !110, i64 34928, !110, i64 34976, !110, i64 35024, !110, i64 35072, !110, i64 35120, !110, i64 35168, !110, i64 35224, !110, i64 35288, !110, i64 35344, !110, i64 35400, !110, i64 35464, !110, i64 35528, !110, i64 35576, !110, i64 35632, !110, i64 35680, !110, i64 35728, !110, i64 35776, !110, i64 35832, !110, i64 35880, !110, i64 35936, !110, i64 35992, !110, i64 36040, !110, i64 36088, !110, i64 36136, !110, i64 36192, !110, i64 36240, !110, i64 36296, !110, i64 36352, !110, i64 36408, !110, i64 36464, !110, i64 36512, !110, i64 36568, !110, i64 36632, !110, i64 36688, !110, i64 36736, !110, i64 36784, !110, i64 36832, !110, i64 36880, !110, i64 36928, !110, i64 36976, !110, i64 37024, !110, i64 37080, !110, i64 37136, !110, i64 37184, !110, i64 37240, !110, i64 37296, !110, i64 37344, !110, i64 37392, !110, i64 37448, !110, i64 37504, !110, i64 37552, !110, i64 37616, !110, i64 37672, !110, i64 37728, !110, i64 37776, !110, i64 37824, !110, i64 37872, !110, i64 37936, !110, i64 37984, !110, i64 38040, !110, i64 38096, !110, i64 38144, !110, i64 38192, !110, i64 38240, !110, i64 38296, !110, i64 38352, !110, i64 38408, !110, i64 38456, !110, i64 38512, !110, i64 38560, !110, i64 38616, !110, i64 38672, !110, i64 38728, !110, i64 38776, !110, i64 38824, !110, i64 38872, !110, i64 38928, !110, i64 38976, !110, i64 39024, !110, i64 39072, !110, i64 39128, !110, i64 39192, !110, i64 39264, !110, i64 39312, !110, i64 39360, !110, i64 39408, !110, i64 39456, !110, i64 39520, !110, i64 39568, !110, i64 39616, !110, i64 39672, !110, i64 39728, !110, i64 39784, !110, i64 39832, !110, i64 39888, !110, i64 39944, !110, i64 39992, !110, i64 40040, !110, i64 40088, !110, i64 40136, !110, i64 40184, !110, i64 40232, !110, i64 40280, !110, i64 40336, !110, i64 40392, !110, i64 40448, !110, i64 40496, !110, i64 40552, !110, i64 40600, !110, i64 40648, !110, i64 40704, !110, i64 40776, !110, i64 40824, !110, i64 40872, !110, i64 40928, !110, i64 40976, !110, i64 41040, !110, i64 41088, !110, i64 41144, !110, i64 41200, !110, i64 41256, !110, i64 41304, !110, i64 41352, !110, i64 41408, !110, i64 41456, !110, i64 41504, !110, i64 41552, !110, i64 41608, !110, i64 41656, !110, i64 41704, !110, i64 41752, !110, i64 41800, !110, i64 41848, !110, i64 41904, !110, i64 41960, !110, i64 42016, !110, i64 42072, !110, i64 42128, !110, i64 42176, !110, i64 42232, !110, i64 42288, !110, i64 42344, !110, i64 42392, !110, i64 42440, !110, i64 42496, !110, i64 42544, !110, i64 42592, !110, i64 42640, !110, i64 42696, !110, i64 42744, !110, i64 42792, !110, i64 42840, !110, i64 42888, !110, i64 42944, !110, i64 42992, !110, i64 43048, !110, i64 43096, !110, i64 43144, !110, i64 43200, !110, i64 43248, !110, i64 43296, !110, i64 43344, !110, i64 43392, !110, i64 43448, !110, i64 43512, !110, i64 43568, !110, i64 43624, !110, i64 43672, !110, i64 43720, !110, i64 43768, !110, i64 43816, !110, i64 43864, !110, i64 43912, !110, i64 43968, !110, i64 44016, !110, i64 44072, !110, i64 44120, !110, i64 44176, !110, i64 44224, !110, i64 44272}
!113 = !{!"_Py_global_strings", !111, i64 0, !112, i64 1336, !9, i64 45664, !9, i64 51808}
!114 = !{!"", !12, i64 0, !12, i64 8}
!115 = !{!"", !106, i64 0, !10, i64 24, !9, i64 32}
!116 = !{!"", !105, i64 0}
!117 = !{!"", !9, i64 0, !107, i64 32960, !9, i64 33000, !113, i64 45288, !114, i64 105288, !107, i64 105304, !114, i64 105344, !115, i64 105360, !116, i64 105400}
!118 = !{!"_Py_static_objects", !117, i64 0}
!119 = !{!"p1 _ZTS18_gil_runtime_state", !34, i64 0}
!120 = !{!"_ceval_state", !12, i64 0, !10, i64 8, !119, i64 16, !10, i64 24, !75, i64 32}
!121 = !{!"p1 _ZTS18_PyThreadStateImpl", !34, i64 0}
!122 = !{!"pythreads", !12, i64 0, !35, i64 8, !121, i64 16, !35, i64 24, !12, i64 32, !12, i64 40}
!123 = !{!"p1 _ZTS14pyruntimestate", !34, i64 0}
!124 = !{!"gc_generation", !114, i64 0, !10, i64 16, !10, i64 20}
!125 = !{!"p1 _ZTS19_PyInterpreterFrame", !34, i64 0}
!126 = !{!"_gc_runtime_state", !10, i64 0, !10, i64 4, !124, i64 8, !9, i64 32, !124, i64 80, !9, i64 104, !10, i64 224, !125, i64 232, !57, i64 240, !57, i64 248, !12, i64 256, !12, i64 264, !10, i64 272, !10, i64 276}
!127 = !{!"", !36, i64 0, !82, i64 8, !12, i64 16}
!128 = !{!"", !10, i64 0, !12, i64 8, !10, i64 16}
!129 = !{!"_import_state", !57, i64 0, !57, i64 8, !57, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !57, i64 40, !57, i64 48, !10, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !127, i64 88, !128, i64 112}
!130 = !{!"_gil_runtime_state", !12, i64 0, !35, i64 8, !10, i64 16, !12, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!131 = !{!"codecs_state", !57, i64 0, !57, i64 8, !57, i64 16, !10, i64 24}
!132 = !{!"p1 int", !34, i64 0}
!133 = !{!"PyConfig", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !12, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !132, i64 64, !10, i64 72, !10, i64 76, !132, i64 80, !132, i64 88, !132, i64 96, !10, i64 104, !62, i64 112, !62, i64 128, !62, i64 144, !62, i64 160, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !132, i64 232, !132, i64 240, !132, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !132, i64 288, !132, i64 296, !132, i64 304, !132, i64 312, !10, i64 320, !62, i64 328, !132, i64 344, !132, i64 352, !132, i64 360, !132, i64 368, !132, i64 376, !132, i64 384, !132, i64 392, !10, i64 400, !132, i64 408, !132, i64 416, !132, i64 424, !132, i64 432, !10, i64 440, !10, i64 444, !10, i64 448}
!134 = !{!"xi_exceptions", !57, i64 0, !57, i64 8, !57, i64 16}
!135 = !{!"", !41, i64 0, !134, i64 24}
!136 = !{!"_warnings_runtime_state", !57, i64 0, !57, i64 8, !57, i64 16, !127, i64 24, !12, i64 48, !57, i64 56}
!137 = !{!"p1 _ZTS15atexit_callback", !34, i64 0}
!138 = !{!"atexit_state", !137, i64 0, !57, i64 8}
!139 = !{!"p1 _ZTS9_qsbr_pad", !34, i64 0}
!140 = !{!"p1 _ZTS18_qsbr_thread_state", !34, i64 0}
!141 = !{!"_qsbr_shared", !12, i64 0, !12, i64 8, !139, i64 16, !34, i64 24, !12, i64 32, !36, i64 40, !140, i64 48}
!142 = !{!"p1 _ZTS15_obmalloc_state", !34, i64 0}
!143 = !{!"_Py_freelist", !34, i64 0, !12, i64 8}
!144 = !{!"_Py_freelists", !143, i64 0, !143, i64 16, !143, i64 32, !9, i64 48, !143, i64 368, !143, i64 384, !143, i64 400, !143, i64 416, !143, i64 432, !143, i64 448, !143, i64 464, !143, i64 480, !143, i64 496, !143, i64 512, !143, i64 528, !143, i64 544, !143, i64 560, !143, i64 576, !143, i64 592, !143, i64 608, !143, i64 624, !143, i64 640}
!145 = !{!"_py_object_state", !144, i64 0, !10, i64 656}
!146 = !{!"_Py_unicode_fs_codec", !69, i64 0, !10, i64 8, !69, i64 16, !10, i64 24}
!147 = !{!"p2 _ZTS7_object", !60, i64 0}
!148 = !{!"_Py_unicode_ids", !12, i64 0, !147, i64 8}
!149 = !{!"_Py_unicode_state", !146, i64 0, !34, i64 32, !148, i64 40}
!150 = !{!"_Py_long_state", !10, i64 0}
!151 = !{!"p1 double", !34, i64 0}
!152 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !151, i64 2432}
!153 = !{!"_py_func_state", !10, i64 0, !9, i64 8}
!154 = !{!"_py_code_state", !36, i64 0, !67, i64 8}
!155 = !{!"_Py_dict_state", !10, i64 0, !9, i64 8}
!156 = !{!"_Py_exc_state", !57, i64 0, !34, i64 8, !10, i64 16, !57, i64 24}
!157 = !{!"_Py_mem_interp_free_queue", !10, i64 0, !36, i64 4, !54, i64 8}
!158 = !{!"ast_state", !92, i64 0, !10, i64 4, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !57, i64 112, !57, i64 120, !57, i64 128, !57, i64 136, !57, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !57, i64 184, !57, i64 192, !57, i64 200, !57, i64 208, !57, i64 216, !57, i64 224, !57, i64 232, !57, i64 240, !57, i64 248, !57, i64 256, !57, i64 264, !57, i64 272, !57, i64 280, !57, i64 288, !57, i64 296, !57, i64 304, !57, i64 312, !57, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !57, i64 376, !57, i64 384, !57, i64 392, !57, i64 400, !57, i64 408, !57, i64 416, !57, i64 424, !57, i64 432, !57, i64 440, !57, i64 448, !57, i64 456, !57, i64 464, !57, i64 472, !57, i64 480, !57, i64 488, !57, i64 496, !57, i64 504, !57, i64 512, !57, i64 520, !57, i64 528, !57, i64 536, !57, i64 544, !57, i64 552, !57, i64 560, !57, i64 568, !57, i64 576, !57, i64 584, !57, i64 592, !57, i64 600, !57, i64 608, !57, i64 616, !57, i64 624, !57, i64 632, !57, i64 640, !57, i64 648, !57, i64 656, !57, i64 664, !57, i64 672, !57, i64 680, !57, i64 688, !57, i64 696, !57, i64 704, !57, i64 712, !57, i64 720, !57, i64 728, !57, i64 736, !57, i64 744, !57, i64 752, !57, i64 760, !57, i64 768, !57, i64 776, !57, i64 784, !57, i64 792, !57, i64 800, !57, i64 808, !57, i64 816, !57, i64 824, !57, i64 832, !57, i64 840, !57, i64 848, !57, i64 856, !57, i64 864, !57, i64 872, !57, i64 880, !57, i64 888, !57, i64 896, !57, i64 904, !57, i64 912, !57, i64 920, !57, i64 928, !57, i64 936, !57, i64 944, !57, i64 952, !57, i64 960, !57, i64 968, !57, i64 976, !57, i64 984, !57, i64 992, !57, i64 1000, !57, i64 1008, !57, i64 1016, !57, i64 1024, !57, i64 1032, !57, i64 1040, !57, i64 1048, !57, i64 1056, !57, i64 1064, !57, i64 1072, !57, i64 1080, !57, i64 1088, !57, i64 1096, !57, i64 1104, !57, i64 1112, !57, i64 1120, !57, i64 1128, !57, i64 1136, !57, i64 1144, !57, i64 1152, !57, i64 1160, !57, i64 1168, !57, i64 1176, !57, i64 1184, !57, i64 1192, !57, i64 1200, !57, i64 1208, !57, i64 1216, !57, i64 1224, !57, i64 1232, !57, i64 1240, !57, i64 1248, !57, i64 1256, !57, i64 1264, !57, i64 1272, !57, i64 1280, !57, i64 1288, !57, i64 1296, !57, i64 1304, !57, i64 1312, !57, i64 1320, !57, i64 1328, !57, i64 1336, !57, i64 1344, !57, i64 1352, !57, i64 1360, !57, i64 1368, !57, i64 1376, !57, i64 1384, !57, i64 1392, !57, i64 1400, !57, i64 1408, !57, i64 1416, !57, i64 1424, !57, i64 1432, !57, i64 1440, !57, i64 1448, !57, i64 1456, !57, i64 1464, !57, i64 1472, !57, i64 1480, !57, i64 1488, !57, i64 1496, !57, i64 1504, !57, i64 1512, !57, i64 1520, !57, i64 1528, !57, i64 1536, !57, i64 1544, !57, i64 1552, !57, i64 1560, !57, i64 1568, !57, i64 1576, !57, i64 1584, !57, i64 1592, !57, i64 1600, !57, i64 1608, !57, i64 1616, !57, i64 1624, !57, i64 1632, !57, i64 1640, !57, i64 1648, !57, i64 1656, !57, i64 1664, !57, i64 1672, !57, i64 1680, !57, i64 1688, !57, i64 1696, !57, i64 1704, !57, i64 1712, !57, i64 1720, !57, i64 1728, !57, i64 1736, !57, i64 1744, !57, i64 1752, !57, i64 1760, !57, i64 1768, !57, i64 1776, !57, i64 1784, !57, i64 1792, !57, i64 1800, !57, i64 1808, !57, i64 1816, !57, i64 1824, !57, i64 1832, !57, i64 1840, !57, i64 1848, !57, i64 1856, !57, i64 1864, !57, i64 1872, !57, i64 1880, !57, i64 1888, !57, i64 1896, !57, i64 1904, !57, i64 1912, !57, i64 1920, !57, i64 1928, !57, i64 1936, !57, i64 1944, !57, i64 1952, !57, i64 1960, !57, i64 1968, !57, i64 1976}
!159 = !{!"type_cache", !9, i64 0}
!160 = !{!"", !12, i64 0, !9, i64 8}
!161 = !{!"", !12, i64 0, !12, i64 8, !9, i64 16}
!162 = !{!"types_state", !10, i64 0, !159, i64 8, !160, i64 98312, !161, i64 108016, !36, i64 108512, !9, i64 108520}
!163 = !{!"callable_cache", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!164 = !{!"short", !9, i64 0}
!165 = !{!"_PyOptimizationConfig", !164, i64 0, !164, i64 2, !164, i64 4, !164, i64 6, !91, i64 8, !91, i64 9}
!166 = !{!"p1 _ZTS17_PyExecutorObject", !34, i64 0}
!167 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!168 = !{!"_Py_GlobalMonitors", !9, i64 0}
!169 = !{!"_Py_interp_cached_objects", !57, i64 0, !57, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !57, i64 72, !57, i64 80}
!170 = !{!"", !105, i64 0, !34, i64 16, !57, i64 24, !12, i64 32}
!171 = !{!"", !105, i64 0, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !9, i64 64}
!172 = !{!"", !10, i64 0, !114, i64 8, !170, i64 24, !171, i64 64}
!173 = !{!"_Py_interp_static_objects", !172, i64 0}
!174 = !{!"", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0}
end_hunk_1
