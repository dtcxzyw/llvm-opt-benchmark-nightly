inline.NumInlined: 54
inline.NumDeleted: 26
begin_hunk_0_@gettmarg:bb.a
  %i.ac = getelementptr i8, ptr %2, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !56
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = call ptr @PyStructSequence_GetItem(ptr noundef nonnull %1, i64 noundef 10) #11 ; 2 uses
  %.not36 = icmp eq ptr %i.ae, @_Py_NoneStruct
  br i1 %.not36, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call i64 @PyLong_AsLong(ptr noundef %i.ae) #11
  %i.ag = getelementptr i8, ptr %2, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !57
  %i.ah = call ptr @PyErr_Occurred() #11
  %.not37 = icmp eq ptr %i.ah, null
  br i1 %.not37, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.j, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %.critedge, %bb.h, %bb.j, %bb.c, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.j ], [ 1, %.critedge ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @checktm(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %i.b, 11
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.40) #11
  br label %bb.u

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 4, !tbaa !34
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %or.cond25 = icmp ugt i32 %i.f, 31
  br i1 %or.cond25, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.41) #11
  br label %bb.u

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %or.cond26 = icmp ugt i32 %i.j, 23
  br i1 %or.cond26, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.42) #11
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %or.cond27 = icmp ugt i32 %i.m, 59
  br i1 %or.cond27, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.43) #11
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.o = load i32, ptr %0, align 8, !tbaa !37
  %or.cond28 = icmp ugt i32 %i.o, 61
  br i1 %or.cond28, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.44) #11
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.45) #11
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.u = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55   ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.u, align 4, !tbaa !55
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %or.cond29 = icmp ugt i32 %i.v, 365
  br i1 %or.cond29, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.x = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.46) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.d
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.d ], [ 0, %bb.t ], [ 0, %bb.h ], [ 1, %bb.s ], [ 1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @PyStructSequence_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteSubstring(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @wcsftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromWideChar(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @init_timezone(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 6 uses
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = tail call i64 @time(ptr noundef null) #11
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = srem i64 %.fr, 31557600
  %i.e = sub nsw i64 %.fr, %i.d                   ; 2 uses
  %i.f = call i32 @_PyTime_localtime(i64 noundef %i.e, ptr noundef nonnull %1) #11 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val41 = load ptr, ptr %i.g, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %.val41, null
  %spec.select.i = select i1 %.not.i, ptr @.str.61, ptr %.val41
  %i.h = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %spec.select.i, i64 noundef 9) #11 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val43 = load i64, ptr %i.i, align 8, !tbaa !57 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.j, align 1, !tbaa !23
  %i.k = add i64 %i.e, 15778800
  %i.l = call i32 @_PyTime_localtime(i64 noundef %i.k, ptr noundef nonnull %1) #11 ; 0 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %.not.i44 = icmp eq ptr %.val, null
  %spec.select.i45 = select i1 %.not.i44, ptr @.str.61, ptr %.val
  %i.m = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %spec.select.i45, i64 noundef 9) #11 ; 0 uses
  %.val42 = load i64, ptr %i.i, align 8, !tbaa !57 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %i.n, align 1, !tbaa !23
  %i.o = add i64 %.val43, -172801
  %or.cond = icmp ult i64 %i.o, -345601
  %i.p = add i64 %.val42, -172801
  %i.q = icmp ult i64 %i.p, -345601
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.q
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.55) #11
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nsw i64 %.val43 to i32
  %i.t = sub nsw i32 0, %i.s                      ; 2 uses
  %i.u = trunc nsw i64 %.val42 to i32
  %i.v = sub nsw i32 0, %i.u                      ; 2 uses
  %i.w = icmp slt i64 %.val42, %.val43
  br i1 %i.w, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = sext i32 %i.v to i64
  %i.y = call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.56, i64 noundef %i.x) #11
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = sext i32 %i.t to i64
  %i.ab = call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.57, i64 noundef %i.aa) #11
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = icmp ne i64 %.val42, %.val43
  %3 = zext i1 %2 to i64
  %i.ad = call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.58, i64 noundef %3) #11
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ag = sext i32 %i.t to i64
  %i.ah = call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.56, i64 noundef %i.ag) #11
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = sext i32 %i.v to i64
  %i.ak = call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.57, i64 noundef %i.aj) #11
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ne i64 %.val42, %.val43
  %i.an = zext i1 %i.am to i64
  %i.ao = call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.58, i64 noundef %i.an) #11
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.0 = phi ptr [ %i.af, %bb.g ], [ %i.aq, %bb.k ]
  %i.ar = call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %.0) #11
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call ptr @PyErr_Occurred() #11
  %.not = icmp ne ptr %i.at, null
  %. = sext i1 %.not to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.j ], [ %., %bb.m ], [ -1, %bb.l ], [ -1, %bb.f ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.1
}

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @py_process_time(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tms, align 8                ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %6 = alloca %struct.rusage, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.c = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %4) #11
  %.not30 = icmp eq i32 %i.c, 0
  br i1 %.not30, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr @.str.62, ptr %2, align 8, !tbaa !48
  %i.d = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr i8, ptr %2, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !52
  %i.f = call i32 @clock_getres(i32 noundef 2, ptr noundef nonnull %5) #11
  %.not29 = icmp eq i32 %i.f, 0
  br i1 %.not29, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.g = load i64, ptr %5, align 8, !tbaa !27
  %i.h = sitofp i64 %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %i.k = sitofp i64 %i.j to double
  %i.l = call double @llvm.fmuladd.f64(double %i.k, double 1.000000e-09, double %i.h)
  %i.m = getelementptr i8, ptr %2, i64 16
  store double %i.l, ptr %i.m, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @PyExc_OSError, align 8, !tbaa !25
  %i.o = call ptr @PyErr_SetFromErrno(ptr noundef %i.n) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.thread35

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = call i32 @_PyTime_FromTimespec(ptr noundef nonnull %1, ptr noundef nonnull %4) #11
  %.lobit = ashr i32 %i.p, 31
  br label %.thread35

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.q = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %6) #11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.63, ptr %2, align 8, !tbaa !48
  %i.s = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr i8, ptr %2, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !52
  %i.u = getelementptr i8, ptr %2, i64 16
  store double f0x3EB0C6F7A0B5ED8D, ptr %i.u, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = call i32 @_PyTime_FromTimeval(ptr noundef nonnull %i.a, ptr noundef nonnull %6) #11
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = call i32 @_PyTime_FromTimeval(ptr noundef nonnull %i.b, ptr noundef nonnull %i.x) #11
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %1, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  %.2 = phi i32 [ 0, %bb.k ], [ -1, %bb.i ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %py_clock.exit

bb.m:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %0, i64 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ae = call i64 @times(ptr noundef nonnull %3) #11
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %process_time_times.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr @.str.64, ptr %2, align 8, !tbaa !48
  %i.ag = call double @_PyTimeFraction_Resolution(ptr noundef %i.ad) #11
  %i.ah = getelementptr i8, ptr %2, i64 16
  store double %i.ag, ptr %i.ah, align 8, !tbaa !53
  %i.ai = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr i8, ptr %2, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !52
  br label %process_time_times.exit

process_time_times.exit:                          ; preds = %bb.n, %bb.o
  %i.ak = load i64, ptr %3, align 8, !tbaa !64
  %i.al = call i64 @_PyTimeFraction_Mul(i64 noundef %i.ak, ptr noundef %i.ad) #11
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !66
  %i.ao = call i64 @_PyTimeFraction_Mul(i64 noundef %i.an, ptr noundef %i.ad) #11
  %i.ap = add i64 %i.ao, %i.al
  store i64 %i.ap, ptr %1, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %py_clock.exit

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.aq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.not.i33 = icmp eq ptr %2, null
  br i1 %.not.i33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr @.str.65, ptr %2, align 8, !tbaa !48
  %i.ar = call double @_PyTimeFraction_Resolution(ptr noundef %i.aq) #11
  %i.as = getelementptr i8, ptr %2, i64 16
end_hunk_0
