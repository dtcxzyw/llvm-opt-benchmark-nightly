inline.NumInlined: 49
inline.NumDeleted: 28
begin_hunk_0
@gc_get_objects._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @gc_get_objects._keywords, ptr @.str.10, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @gc_get_objects._kwtuple, i64 16), ptr null }, align 8
@.str.27 = private unnamed_addr constant [15 x i8] c"gc.get_objects\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"generation parameter must be less than the number of available generations (%i)\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"generation parameter cannot be negative\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"{snsnsnsnsd}\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"collections\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"collected\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"uncollectable\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"candidates\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"gc.get_referrers\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"gc.get_referents\00", align 1
@gcmodule_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @gcmodule_exec }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"callbacks\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"DEBUG_STATS\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"DEBUG_COLLECTABLE\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"DEBUG_UNCOLLECTABLE\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"DEBUG_SAVEALL\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"DEBUG_LEAK\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInit_gc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @gcmodule) #4
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @gc_enable(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @PyGC_Enable() #4          ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @gc_disable(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @PyGC_Disable() #4         ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_isenabled(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @PyGC_IsEnabled() #4       ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @gc_set_debug(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #4 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %i.a, %bb.a ], [ -1, %bb.b ]
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.e, i64 7404
  store i32 %.sink, ptr %i.f, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_get_debug(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 7404
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = sext i32 %i.d to i64
  %i.h = tail call ptr @PyLong_FromLong(i64 noundef %i.g) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_get_count(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 7428
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = getelementptr i8, ptr %i.b, i64 7432     ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 7672
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [24 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %i.l = xor i32 %i.g, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [24 x i8], ptr %i.e, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23
  %i.q = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.20, i32 noundef %i.d, i32 noundef %i.k, i32 noundef %i.p) #4
  ret ptr %i.q
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @gc_set_threshold(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !24
  switch i64 %.val, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a) #4
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %gc_set_threshold_impl.exit, label %.thread16

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %gc_set_threshold_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4, !tbaa !7
  %i.h = load i32, ptr %i.b, align 4, !tbaa !7
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 7424
  store i32 %i.g, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr i8, ptr %i.j, i64 7448
  store i32 %i.h, ptr %i.l, align 8, !tbaa !29
  br label %gc_set_threshold_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.m = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %gc_set_threshold_impl.exit, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.24) #4
  br label %gc_set_threshold_impl.exit

.thread16:                                        ; preds = %bb.b
  %i.o = load i32, ptr %i.a, align 4, !tbaa !7
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr i8, ptr %i.q, i64 7424
  store i32 %i.o, ptr %i.r, align 8, !tbaa !28
  br label %gc_set_threshold_impl.exit

bb.f:                                             ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4, !tbaa !7
  %i.s = load i32, ptr %i.b, align 4, !tbaa !7
  %i.t = load i32, ptr %i.c, align 4, !tbaa !7
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 7424
  store i32 %.pre, ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr i8, ptr %i.v, i64 7448
  store i32 %i.s, ptr %i.x, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %i.v, i64 7472
  store i32 %i.t, ptr %i.y, align 8, !tbaa !29
  br label %gc_set_threshold_impl.exit

gc_set_threshold_impl.exit:                       ; preds = %.thread, %bb.f, %.thread16, %bb.d, %bb.c, %bb.b, %bb.e
  %.08 = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.c ], [ @_Py_NoneStruct, %.thread16 ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_get_threshold(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 7424
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr i8, ptr %i.b, i64 7448
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.20, i32 noundef %i.d, i32 noundef %i.f, i32 noundef 0) #4
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_collect(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %.thread35, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.e = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @gc_collect._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %bb.i, label %.thread35

.thread35:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not30 = icmp eq i64 %2, %i.i
  br i1 %.not30, label %.thread40, label %bb.d

.thread40:                                        ; preds = %.thread35
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  br label %gc_collect_impl.exit

bb.d:                                             ; preds = %.thread35
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.m = call i32 @PyLong_AsInt(ptr noundef %i.l) #4 ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call ptr @PyErr_Occurred() #4
  %.not31 = icmp eq ptr %i.o, null
  br i1 %.not31, label %.thread37, label %bb.i

.thread37:                                        ; preds = %bb.e
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  br label %gc_collect_impl.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.r = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %or.cond.i = icmp ugt i32 %i.m, 2
  br i1 %or.cond.i, label %gc_collect_impl.exit.thread, label %gc_collect_impl.exit

gc_collect_impl.exit.thread:                      ; preds = %bb.f, %.thread37
  %i.t = phi ptr [ %i.q, %.thread37 ], [ %i.s, %bb.f ]
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !30
  call void @_PyErr_SetString(ptr noundef %i.t, ptr noundef %i.u, ptr noundef nonnull @.str.26) #4
  br label %bb.g

gc_collect_impl.exit:                             ; preds = %bb.f, %.thread40
  %i.v = phi ptr [ %i.k, %.thread40 ], [ %i.s, %bb.f ]
  %.043 = phi i32 [ 2, %.thread40 ], [ %i.m, %bb.f ]
  %i.w = call i64 @_PyGC_Collect(ptr noundef %i.v, i32 noundef %.043, i32 noundef 2) #4 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %gc_collect_impl.exit.thread, %gc_collect_impl.exit
  %i.y = call ptr @PyErr_Occurred() #4
  %.not32 = icmp eq ptr %i.y, null
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %gc_collect_impl.exit
  %.0.i45 = phi i64 [ -1, %bb.g ], [ %i.w, %gc_collect_impl.exit ]
  %i.z = call ptr @PyLong_FromSsize_t(i64 noundef %.0.i45) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.h
  %.024 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ %i.z, %bb.h ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_get_objects(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !33
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !33
  %i.d = icmp ult i64 %2, 2
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @gc_get_objects._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %gc_get_objects_impl.exit, label %.thread28

.thread28:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]
  %i.i = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.j = sub i64 0, %i.i
  %.not24 = icmp eq i64 %2, %i.j
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread28
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.k, ptr noundef nonnull %i.b) #4
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %gc_get_objects_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread28
  %.pre = load i64, ptr %i.b, align 8, !tbaa !33  ; 4 uses
  %i.m = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %.pre) #4
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %gc_get_objects_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %.pre, 2
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !30
  %i.q = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.29, i32 noundef 3) #4
  br label %gc_get_objects_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp slt i64 %.pre, -1
  br i1 %i.r, label %bb.i, label %.thread36

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !30
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.30) #4
  br label %gc_get_objects_impl.exit

.thread36:                                        ; preds = %bb.h
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = trunc nsw i64 %.pre to i32
  %i.w = call ptr @_PyGC_GetObjects(ptr noundef %i.u, i32 noundef %i.v) #4
  br label %gc_get_objects_impl.exit

gc_get_objects_impl.exit:                         ; preds = %.thread36, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.w, %.thread36 ], [ %i.q, %bb.g ], [ null, %bb.i ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_get_stats(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 15 uses
  %i.c = getelementptr i8, ptr %i.b, i64 7504
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7512
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7520
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7528
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7536
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7544
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7552
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7560
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7568
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.12.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7576
  %.sroa.12.0.copyload.i = load double, ptr %.sroa.12.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7584
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7592
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7600
  %.sroa.15.0.copyload.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7608
  %.sroa.16.0.copyload.i = load i64, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.17.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 7616
  %.sroa.17.0.copyload.i = load double, ptr %.sroa.17.0..sroa_idx.i, align 8
  %i.d = tail call ptr @PyList_New(i64 noundef 0) #4 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %gc_get_stats_impl.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.f = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i64 noundef %.sroa.0.0.copyload.i, ptr noundef nonnull @.str.33, i64 noundef %.sroa.4.0.copyload.i, ptr noundef nonnull @.str.34, i64 noundef %.sroa.5.0.copyload.i, ptr noundef nonnull @.str.35, i64 noundef %.sroa.6.0.copyload.i, ptr noundef nonnull @.str.36, double noundef %.sroa.7.0.copyload.i) #4 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.h

.preheader.1.i:                                   ; preds = %Py_DECREF.exit.i
  %i.h = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i64 noundef %.sroa.8.0.copyload.i, ptr noundef nonnull @.str.33, i64 noundef %.sroa.9.0.copyload.i, ptr noundef nonnull @.str.34, i64 noundef %.sroa.10.0.copyload.i, ptr noundef nonnull @.str.35, i64 noundef %.sroa.11.0.copyload.i, ptr noundef nonnull @.str.36, double noundef %.sroa.12.0.copyload.i) #4 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.preheader.1.i
  %i.j = tail call i32 @PyList_Append(ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #4
  %.not.1.i = icmp eq i32 %i.j, 0
  %i.k = load i32, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %.not.i.1.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.1.i, label %bb.c, label %Py_DECREF.exit.1.i

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %Py_DECREF.exit.1.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #4
  br label %Py_DECREF.exit.1.i

Py_DECREF.exit.1.i:                               ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.1.i, label %.preheader.2.i, label %bb.k

.preheader.2.i:                                   ; preds = %Py_DECREF.exit.1.i
  %i.n = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i64 noundef %.sroa.13.0.copyload.i, ptr noundef nonnull @.str.33, i64 noundef %.sroa.14.0.copyload.i, ptr noundef nonnull @.str.34, i64 noundef %.sroa.15.0.copyload.i, ptr noundef nonnull @.str.35, i64 noundef %.sroa.16.0.copyload.i, ptr noundef nonnull @.str.36, double noundef %.sroa.17.0.copyload.i) #4 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.preheader.2.i
  %i.p = tail call i32 @PyList_Append(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n) #4
  %.not.2.i = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %.not.i.2.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.2.i, label %bb.f, label %Py_DECREF.exit.2.i

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.n, align 8, !tbaa !34
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit.2.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #4
  br label %Py_DECREF.exit.2.i

Py_DECREF.exit.2.i:                               ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.2.i, label %gc_get_stats_impl.exit, label %bb.k

bb.h:                                             ; preds = %.preheader.preheader.i
  %i.t = tail call i32 @PyList_Append(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #4
  %.not.i = icmp eq i32 %i.t, 0
  %i.u = load i32, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.f, align 8, !tbaa !34
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i, label %.preheader.1.i, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit.2.i, %.preheader.2.i, %Py_DECREF.exit.1.i, %.preheader.1.i, %.preheader.preheader.i
  %i.x = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i.i, label %bb.l, label %gc_get_stats_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !34
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %gc_get_stats_impl.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #4
  br label %gc_get_stats_impl.exit

gc_get_stats_impl.exit:                           ; preds = %bb.a, %Py_DECREF.exit.2.i, %bb.k, %bb.l, %bb.m
  %.0.i = phi ptr [ null, %bb.m ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.l ], [ %i.d, %Py_DECREF.exit.2.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_is_tracked(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_GC_IsTracked(ptr noundef %1) #4 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_is_finalized(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_GC_IsFinalized(ptr noundef %1) #4 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @gc_get_referrers(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_FromArray(ptr noundef %1, i64 noundef %2) #4 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.split6, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a) #4
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %gc_get_referrers_impl.exit, label %bb.b

bb.b:                                             ; preds = %.split
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call ptr @_PyGC_GetReferrers(ptr noundef %i.f, ptr noundef nonnull %i.a) #4
  br label %gc_get_referrers_impl.exit
end_hunk_0
