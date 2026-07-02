inline.NumInlined: 66
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_PyFaulthandler_Fini:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.u = call i32 @sigaltstack(ptr noundef null, ptr noundef nonnull %0) #16
  %i.v = icmp eq i32 %i.u, 0
  %.pre9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203 ; 2 uses
  %i.w = load ptr, ptr %0, align 8
  %i.x = icmp eq ptr %i.w, %.pre9
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = call i32 @sigaltstack(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10328), ptr noundef null) #16 ; 0 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.z = phi ptr [ %.pre, %bb.m ], [ %.pre9, %bb.l ]
  call void @PyMem_Free(ptr noundef %i.z) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cancel_dump_traceback_later() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10280), align 8, !tbaa !193 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyThread_release_lock(ptr noundef nonnull %i.a) #16
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10288), align 8, !tbaa !194
  %i.c = tail call i32 @PyThread_acquire_lock(ptr noundef %i.b, i32 noundef 1) #16 ; 0 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10288), align 8, !tbaa !194
  tail call void @PyThread_release_lock(ptr noundef %i.d) #16
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10280), align 8, !tbaa !193
  %i.f = tail call i32 @PyThread_acquire_lock(ptr noundef %i.e, i32 noundef 1) #16 ; 0 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10216), align 8, !tbaa !199 ; 4 uses
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10216), align 8, !tbaa !199
  %i.h = load i32, ptr %i.g, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !187
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10264), align 8, !tbaa !204 ; 2 uses
  %.not7 = icmp eq ptr %i.k, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit
  tail call void @PyMem_Free(ptr noundef nonnull %i.k) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10264), align 8, !tbaa !204
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %Py_DECREF.exit
  ret void
}

declare void @PyThread_release_lock(ptr noundef) local_unnamed_addr #1

declare void @PyThread_free_lock(ptr noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @faulthandler_disable() unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10176), align 8, !tbaa !205
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10176), align 8, !tbaa !205
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 4), align 4, !tbaa !206
  %.not.i9 = icmp eq i32 %i.b, 0
  br i1 %.not.i9, label %faulthandler_disable_fatal_handler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 4), align 4, !tbaa !206
  %i.c = load i32, ptr @faulthandler_handlers, align 16, !tbaa !208
  %i.d = tail call i32 @sigaction(i32 noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 16), ptr noundef null) #16 ; 0 uses
  br label %faulthandler_disable_fatal_handler.exit

faulthandler_disable_fatal_handler.exit:          ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 180), align 4, !tbaa !206
  %.not.i9.1 = icmp eq i32 %i.e, 0
  br i1 %.not.i9.1, label %faulthandler_disable_fatal_handler.exit.1, label %bb.d

bb.d:                                             ; preds = %faulthandler_disable_fatal_handler.exit
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 180), align 4, !tbaa !206
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 176), align 16, !tbaa !208
  %i.g = tail call i32 @sigaction(i32 noundef %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 192), ptr noundef null) #16 ; 0 uses
  br label %faulthandler_disable_fatal_handler.exit.1

faulthandler_disable_fatal_handler.exit.1:        ; preds = %bb.d, %faulthandler_disable_fatal_handler.exit
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 356), align 4, !tbaa !206
  %.not.i9.2 = icmp eq i32 %i.h, 0
  br i1 %.not.i9.2, label %faulthandler_disable_fatal_handler.exit.2, label %bb.e

bb.e:                                             ; preds = %faulthandler_disable_fatal_handler.exit.1
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 356), align 4, !tbaa !206
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 352), align 16, !tbaa !208
  %i.j = tail call i32 @sigaction(i32 noundef %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 368), ptr noundef null) #16 ; 0 uses
  br label %faulthandler_disable_fatal_handler.exit.2

faulthandler_disable_fatal_handler.exit.2:        ; preds = %bb.e, %faulthandler_disable_fatal_handler.exit.1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 532), align 4, !tbaa !206
  %.not.i9.3 = icmp eq i32 %i.k, 0
  br i1 %.not.i9.3, label %faulthandler_disable_fatal_handler.exit.3, label %bb.f

bb.f:                                             ; preds = %faulthandler_disable_fatal_handler.exit.2
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 532), align 4, !tbaa !206
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 528), align 16, !tbaa !208
  %i.m = tail call i32 @sigaction(i32 noundef %i.l, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 544), ptr noundef null) #16 ; 0 uses
  br label %faulthandler_disable_fatal_handler.exit.3

faulthandler_disable_fatal_handler.exit.3:        ; preds = %bb.f, %faulthandler_disable_fatal_handler.exit.2
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 708), align 4, !tbaa !206
  %.not.i9.4 = icmp eq i32 %i.n, 0
  br i1 %.not.i9.4, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %faulthandler_disable_fatal_handler.exit.3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 708), align 4, !tbaa !206
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 704), align 16, !tbaa !208
  %i.p = tail call i32 @sigaction(i32 noundef %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 720), ptr noundef null) #16 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %faulthandler_disable_fatal_handler.exit.3, %bb.g, %bb.a
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10184), align 8, !tbaa !199 ; 4 uses
  %.not8 = icmp eq ptr %i.q, null
  br i1 %.not8, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10184), align 8, !tbaa !199
  %i.r = load i32, ptr %i.q, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !187
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %.loopexit
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaltstack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_traverse(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10216), align 8, !tbaa !209 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %i.a, ptr noundef %2) #16 ; 2 uses
  %.not29.not = icmp eq i32 %i.b, 0
  br i1 %.not29.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10296), align 8, !tbaa !195 ; 2 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.d = phi ptr [ %i.i, %bb.e ], [ %i.c, %bb.c ] ; 2 uses
  %.02438 = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr [192 x i8], ptr %i.d, i64 %.02438
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210  ; 2 uses
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.h = tail call i32 %1(ptr noundef nonnull %i.g, ptr noundef %2) #16 ; 2 uses
  %.not32 = icmp eq i32 %i.h, 0
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10296), align 8, !tbaa !195
  br i1 %.not32, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.i = phi ptr [ %i.d, %.preheader ], [ %.pre, %bb.d ]
  %i.j = add nuw nsw i64 %.02438, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, 65
  br i1 %exitcond.not, label %.thread, label %.preheader, !llvm.loop !211

.thread:                                          ; preds = %bb.e, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10184), align 8, !tbaa !212 ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.l = tail call i32 %1(ptr noundef nonnull %i.k, ptr noundef %2) #16 ; 2 uses
  %.not34.not = icmp eq i32 %i.l, 0
  br i1 %.not34.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %.thread
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.b, %bb.g
  %.8 = phi i32 [ 0, %bb.g ], [ %i.l, %bb.f ], [ %i.b, %bb.b ], [ %i.h, %bb.d ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @faulthandler_py_enable(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.sigaction, align 8          ; 23 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !213
  %i.d = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %2, 4
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread52, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.d, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @faulthandler_py_enable._parser, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.ac, label %.thread52

.thread52:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]   ; 3 uses
  %.not46 = icmp eq i64 %i.j, 0
  br i1 %.not46, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.thread52
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !199  ; 4 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %i.j, -1                         ; 2 uses
  %.not48 = icmp eq i64 %i.l, 0
  br i1 %.not48, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.034 = phi i64 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199  ; 2 uses
  %.not49 = icmp eq ptr %i.n, null
  br i1 %.not49, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.n) #16 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ugt i64 %.034, 1
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %.031 = phi i32 [ %i.o, %bb.h ], [ 1, %bb.f ]
  %i.r = getelementptr i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.t = call i32 @PyObject_IsTrue(ptr noundef %i.s) #16 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %.thread52
  %.133 = phi ptr [ %i.k, %bb.i ], [ %i.k, %bb.h ], [ %i.k, %bb.e ], [ null, %.thread52 ]
  %.1 = phi i32 [ %.031, %bb.i ], [ %i.o, %bb.h ], [ 1, %bb.e ], [ 1, %.thread52 ]
  %.0 = phi i32 [ %i.t, %bb.i ], [ 1, %bb.h ], [ 1, %bb.e ], [ 1, %.thread52 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.133, ptr %i.a, align 8, !tbaa !199
  %i.v = call fastcc i32 @faulthandler_get_fileno(ptr noundef %i.a) ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %faulthandler_py_enable_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !214  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %get_thread_state.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !199
  call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.24) #16
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !199 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %faulthandler_py_enable_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i.i, label %bb.n, label %faulthandler_py_enable_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !187
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %faulthandler_py_enable_impl.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #16
  br label %faulthandler_py_enable_impl.exit

get_thread_state.exit.i:                          ; preds = %bb.k
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10184), align 8, !tbaa !199 ; 4 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !199
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10184), align 8, !tbaa !199
  %.not.i11.i = icmp eq ptr %i.af, null
  br i1 %.not.i11.i, label %Py_XDECREF.exit13.i, label %bb.p

bb.p:                                             ; preds = %get_thread_state.exit.i
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !187 ; 2 uses
  %.not.i.i12.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i12.i, label %bb.q, label %Py_XDECREF.exit13.i

bb.q:                                             ; preds = %bb.p
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !187
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %Py_XDECREF.exit13.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.af) #16
  br label %Py_XDECREF.exit13.i

Py_XDECREF.exit13.i:                              ; preds = %bb.r, %bb.q, %bb.p, %get_thread_state.exit.i
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10192), align 8, !tbaa !215
  store i32 %.1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10196), align 4, !tbaa !216
  %i.ak = call ptr @PyThreadState_GetInterpreter(ptr noundef nonnull %i.y) #16
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10200), align 8, !tbaa !217
  store i32 %.0, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10208), align 8, !tbaa !218
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10176), align 8, !tbaa !205
  %.not.i14.i = icmp eq i32 %i.al, 0
  br i1 %.not.i14.i, label %bb.s, label %faulthandler_py_enable_impl.exit

bb.s:                                             ; preds = %Py_XDECREF.exit13.i
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10176), align 8, !tbaa !205
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203
  %.not.i.i15.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i15.i, label %bb.t, label %faulthandler_allocate_stack.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10320), align 8, !tbaa !11
  %i.ao = call ptr @PyMem_Malloc(i64 noundef %i.an) #16 ; 2 uses
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aq = call ptr @PyErr_NoMemory() #16          ; 0 uses
  br label %faulthandler_py_enable_impl.exit

bb.v:                                             ; preds = %bb.t
  %i.ar = call i32 @sigaltstack(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10328)) #16
  %.not2.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not2.i.i.i, label %faulthandler_allocate_stack.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load ptr, ptr @PyExc_OSError, align 8, !tbaa !199
  %i.at = call ptr @PyErr_SetFromErrno(ptr noundef %i.as) #16 ; 0 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203
  call void @PyMem_Free(ptr noundef %i.au) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10304), align 8, !tbaa !203
  br label %faulthandler_py_enable_impl.exit

faulthandler_allocate_stack.exit.i.i:             ; preds = %bb.v, %bb.s
  call void @_Py_InitDumpStack() #16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr @faulthandler_fatal_error, ptr %4, align 8, !tbaa !187
  %i.ax = call i32 @sigemptyset(ptr noundef nonnull %i.av) #16 ; 0 uses
  store i32 1207959552, ptr %i.aw, align 8, !tbaa !219
  %i.ay = load i32, ptr @faulthandler_handlers, align 16, !tbaa !208
  %i.az = call i32 @sigaction(i32 noundef %i.ay, ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @faulthandler_handlers, i64 16)) #16
end_hunk_0
