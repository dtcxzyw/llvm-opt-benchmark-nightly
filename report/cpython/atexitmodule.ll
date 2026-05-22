inline.NumInlined: 26
inline.NumDeleted: 10
begin_hunk_0_@_PyAtExit_Init:bb.a
  store ptr @.str, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.h, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 8, !tbaa !27
  ret void
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden void @_PyAtExit_Fini(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10832      ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 10840      ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.c = tail call i32 @PyList_Clear(ptr noundef %.val) #7 ; 0 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !28   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !28
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %.not1819 = icmp eq ptr %i.h, null
  br i1 %.not1819, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Py_DECREF.exit, %.lr.ph
  %.020 = phi ptr [ %i.j, %.lr.ph ], [ %i.h, %Py_DECREF.exit ] ; 4 uses
  %i.i = getelementptr i8, ptr %.020, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = load ptr, ptr %.020, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %.020, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  tail call void @PyMem_Free(ptr noundef nonnull %.020) #7
  tail call void %i.k(ptr noundef %i.m) #7
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %Py_DECREF.exit
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @_PyAtExit_Call(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10832
  tail call fastcc void @atexit_callfuncs(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @atexit_callfuncs(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val27 = load i64, ptr %i.c, align 8, !tbaa !33
  %i.d = tail call ptr @PyList_GetSlice(ptr noundef %i.b, i64 noundef 0, i64 noundef %.val27) #7 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %.val2628 = load i64, ptr %i.f, align 8, !tbaa !33
  %i.g = icmp sgt i64 %.val2628, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %i.d, i64 24
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.2) #7
  br label %Py_DECREF.exit

._crit_edge:                                      ; preds = %Py_DECREF.exit23, %.preheader
  %i.i = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %._crit_edge
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 8, !tbaa !29
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #7
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %.lr.ph, %Py_DECREF.exit23
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %Py_DECREF.exit23 ] ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %.029
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr i8, ptr %i.n, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %i.u = icmp eq ptr %i.t, @_Py_NoneStruct
  %i.v = select i1 %i.u, ptr null, ptr %i.t
  %i.w = tail call ptr @PyObject_Call(ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.v) #7 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.3, ptr noundef %i.p) #7
  br label %Py_DECREF.exit23

bb.g:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.y, -1
  br i1 %.not.i22, label %bb.h, label %Py_DECREF.exit23

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !29
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %Py_DECREF.exit23

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #7
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ab = add nuw nsw i64 %.029, 1                ; 2 uses
  %.val26 = load i64, ptr %i.f, align 8, !tbaa !33
  %i.ac = icmp slt i64 %i.ab, %.val26
  br i1 %i.ac, label %bb.e, label %._crit_edge, !llvm.loop !42

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %._crit_edge, %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ad = tail call i32 @PyList_Clear(ptr noundef %.val) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInit_atexit() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @atexitmodule) #7
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyList_Clear(ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyList_GetSlice(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @atexit_register(ptr readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val27 = load i64, ptr %i.a, align 8, !tbaa !33
  %i.b = icmp eq i64 %.val27, 0
  br i1 %i.b, label %3, label %bb.b

3:                                                ; preds = %bb.a
  %4 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !28
  tail call void @PyErr_SetString(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  br label %Py_DECREF.exit22

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 6 uses
  %i.e = tail call i32 @PyCallable_Check(ptr noundef %i.d) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %5, label %bb.c

5:                                                ; preds = %bb.b
  %6 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !28
  tail call void @PyErr_SetString(ptr noundef %6, ptr noundef nonnull @.str.12) #7
  br label %Py_DECREF.exit22

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %i.a, align 8, !tbaa !33
  %i.f = tail call ptr @PyTuple_GetSlice(ptr noundef nonnull %1, i64 noundef 1, i64 noundef %.val) #7 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit22, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.h, ptr @_Py_NoneStruct, ptr %2
  %i.i = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %spec.store.select) #7 ; 7 uses
  %i.j = load i32, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.not.i23 = icmp sgt i32 %i.j, -1
  br i1 %.not.i23, label %bb.e, label %Py_DECREF.exit24

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.f, align 8, !tbaa !29
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit24

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #7
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.m = icmp eq ptr %i.i, null
  br i1 %i.m, label %Py_DECREF.exit22, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit24
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr i8, ptr %i.o, i64 10840
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = tail call i32 @PyList_Insert(ptr noundef %i.q, i64 noundef 0, ptr noundef nonnull %i.i) #7
  %i.s = icmp slt i32 %i.r, 0
  %i.t = load i32, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %.not.i21 = icmp sgt i32 %i.t, -1               ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i21, label %bb.i, label %Py_DECREF.exit22

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.i, align 8, !tbaa !29
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit22

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #7
  br label %Py_DECREF.exit22

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i21, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.w, ptr %i.i, align 8, !tbaa !29
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.l, %bb.m
  %i.y = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %Py_DECREF.exit22, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !29
  br label %Py_DECREF.exit22

Py_DECREF.exit22:                                 ; preds = %bb.n, %Py_DECREF.exit, %bb.j, %bb.i, %bb.h, %5, %Py_DECREF.exit24, %bb.c, %3
  %.4 = phi ptr [ null, %3 ], [ null, %5 ], [ null, %bb.c ], [ null, %Py_DECREF.exit24 ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.i ], [ %i.d, %Py_DECREF.exit ], [ %i.d, %bb.n ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @atexit_clear(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 10840
  %.val = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = tail call i32 @PyList_Clear(ptr noundef %.val) #7 ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @atexit_unregister(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 10840
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %.val54.i = load i64, ptr %i.e, align 8, !tbaa !33
  %.03563.i = add i64 %.val54.i, -1               ; 2 uses
  %i.f = icmp sgt i64 %.03563.i, -1
  br i1 %i.f, label %.lr.ph65.i, label %atexit_unregister_locked.exit

.lr.ph65.i:                                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph65.i
  %.03564.i = phi i64 [ %.03563.i, %.lr.ph65.i ], [ %.035.i, %Py_DECREF.exit.i ] ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %.03564.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %i.j, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.c, %bb.b
  %i.n = getelementptr i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = tail call i32 @PyObject_RichCompareBool(ptr noundef %1, ptr noundef %i.o, i32 noundef 2) #7 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_Py_NewRef.exit.i
  %i.r = load i32, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not.i48.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i48.i, label %bb.e, label %atexit_unregister_locked.exit

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.j, align 8, !tbaa !29
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit47.thread.sink.split.i, label %atexit_unregister_locked.exit

bb.f:                                             ; preds = %_Py_NewRef.exit.i
  %i.u = icmp eq i32 %i.p, 1
  br i1 %i.u, label %bb.g, label %Py_DECREF.exit47.i

bb.g:                                             ; preds = %bb.f
  %.val53.i = load i64, ptr %i.e, align 8, !tbaa !33
  %i.v = add i64 %.val53.i, -1                    ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  br i1 %i.w, label %.lr.ph.i, label %Py_DECREF.exit47.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %.03564.i)
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i
  %.062.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.ai, %bb.l ] ; 6 uses
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.062.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.ab = icmp eq ptr %i.aa, %i.j
  br i1 %i.ab, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw i64 %.062.i, 1
  %i.ad = tail call i32 @PyList_SetSlice(ptr noundef nonnull %i.d, i64 noundef %.062.i, i64 noundef %i.ac, ptr noundef null) #7
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %Py_DECREF.exit47.i

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i46.i, label %bb.k, label %atexit_unregister_locked.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.j, align 8, !tbaa !29
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %Py_DECREF.exit47.thread.sink.split.i, label %atexit_unregister_locked.exit

bb.l:                                             ; preds = %bb.h
  %i.ai = add nsw i64 %.062.i, -1
  %i.aj = icmp sgt i64 %.062.i, 0
  br i1 %i.aj, label %bb.h, label %Py_DECREF.exit47.i, !llvm.loop !45

Py_DECREF.exit47.i:                               ; preds = %bb.l, %bb.i, %bb.g, %bb.f
  %.338.i = phi i64 [ %.03564.i, %bb.f ], [ %.062.i, %bb.i ], [ %.03564.i, %bb.g ], [ %.03564.i, %bb.l ]
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.m, label %Py_DECREF.exit.i

bb.m:                                             ; preds = %Py_DECREF.exit47.i
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.j, align 8, !tbaa !29
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #7
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.n, %bb.m, %Py_DECREF.exit47.i
  %.val52.i = load i64, ptr %i.e, align 8, !tbaa !33
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %.338.i, i64 %.val52.i)
  %.035.i = add i64 %spec.select.i, -1            ; 2 uses
  %i.an = icmp sgt i64 %.035.i, -1
  br i1 %i.an, label %bb.b, label %atexit_unregister_locked.exit, !llvm.loop !46

Py_DECREF.exit47.thread.sink.split.i:             ; preds = %bb.k, %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #7
  br label %atexit_unregister_locked.exit

atexit_unregister_locked.exit:                    ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit47.thread.sink.split.i, %bb.k, %bb.j, %bb.e, %bb.d, %bb.a
  %i.ao = phi ptr [ null, %Py_DECREF.exit47.thread.sink.split.i ], [ @_Py_NoneStruct, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.k ], [ @_Py_NoneStruct, %Py_DECREF.exit.i ]
  ret ptr %i.ao
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @atexit_run_exitfuncs(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 10832
  tail call fastcc void @atexit_callfuncs(ptr noundef %i.c)
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @atexit_ncallbacks(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %i.b, i64 10840
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !33
  %i.f = tail call ptr @PyLong_FromSsize_t(i64 noundef %.val) #7
  ret ptr %i.f
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyCallable_Check(ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_GetSlice(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

declare i32 @PyList_Insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
