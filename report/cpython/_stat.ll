Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_stat?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@stat_S_ISREG:bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %i.a, 61440
  %i.e = icmp eq i32 %i.d, 32768
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_ISFIFO(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %i.a, 61440
  %i.e = icmp eq i32 %i.d, 4096
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_ISLNK(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %i.a, 61440
  %i.e = icmp eq i32 %i.d, 40960
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_ISSOCK(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %i.a, 61440
  %i.e = icmp eq i32 %i.d, 49152
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_ISDOOR(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef 0) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_ISPORT(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef 0) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_ISWHT(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef 0) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_IMODE(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %i.a, 4095
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.e) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_S_IFMT(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i32 %i.a, 61440
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.e) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stat_filemode(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [10 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = tail call fastcc i32 @_PyLong_AsMode_t(ptr noundef %1) ; 17 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.d = lshr i32 %i.b, 12
  %i.e = and i32 %i.d, 15
  %switch.tableidx = add nsw i32 %i.e, -1         ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 12
  br i1 %i.f, label %switch.lookup, label %filetype.exit

switch.lookup:                                    ; preds = %.split
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.stat_filemode, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %filetype.exit

filetype.exit:                                    ; preds = %.split, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 63, %.split ]
  store i8 %.0.i, ptr %i.a, align 8, !tbaa !11
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = and i32 %i.b, 256
  %.not.i = icmp eq i32 %3, 0
  %4 = select i1 %.not.i, i8 45, i8 114
  store i8 %4, ptr %2, align 1, !tbaa !11
  %5 = and i32 %i.b, 128
  %.not26.i = icmp eq i32 %5, 0
  %6 = select i1 %.not26.i, i8 45, i8 119
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %6, ptr %7, align 2, !tbaa !11
  %8 = and i32 %i.b, 2048
  %.not27.i = icmp eq i32 %8, 0
  br i1 %.not27.i, label %14, label %9

9:                                                ; preds = %filetype.exit
  %10 = trunc i32 %i.b to i8
  %11 = lshr i8 %10, 1
  %12 = and i8 %11, 32
  %13 = or disjoint i8 %12, 83
  br label %17

14:                                               ; preds = %filetype.exit
  %15 = and i32 %i.b, 64
  %.not28.i = icmp eq i32 %15, 0
  %16 = select i1 %.not28.i, i8 45, i8 120
  br label %17

17:                                               ; preds = %14, %9
  %.sink.i = phi i8 [ %16, %14 ], [ %13, %9 ]
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sink.i, ptr %18, align 1, !tbaa !11
  %19 = and i32 %i.b, 32
  %.not30.i = icmp eq i32 %19, 0
  %20 = select i1 %.not30.i, i8 45, i8 114
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %20, ptr %21, align 4, !tbaa !11
  %22 = and i32 %i.b, 16
  %.not31.i = icmp eq i32 %22, 0
  %23 = select i1 %.not31.i, i8 45, i8 119
  %24 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %23, ptr %24, align 1, !tbaa !11
  %25 = and i32 %i.b, 1024
  %.not32.i = icmp eq i32 %25, 0
  br i1 %.not32.i, label %30, label %26

26:                                               ; preds = %17
  %.tr.i = trunc i32 %i.b to i8
  %27 = shl i8 %.tr.i, 2
  %28 = and i8 %27, 32
  %29 = or disjoint i8 %28, 83
  br label %filetype.exit.a

30:                                               ; preds = %17
  %31 = and i32 %i.b, 8
  %.not33.i = icmp eq i32 %31, 0
  %32 = select i1 %.not33.i, i8 45, i8 120
  br label %filetype.exit.a

filetype.exit.a:                                  ; preds = %30, %26
  %.0.i.a = phi i8 [ %32, %30 ], [ %29, %26 ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %.0.i.a, ptr %i.h, align 2, !tbaa !11
  %33 = and i32 %i.b, 4
  %.not35.i = icmp eq i32 %33, 0
  %i.i = select i1 %.not35.i, i8 45, i8 114
  %34 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.i, ptr %34, align 1, !tbaa !11
  %35 = and i32 %i.b, 2
  %.not36.i = icmp eq i32 %35, 0
  %i.j = select i1 %.not36.i, i8 45, i8 119
  %36 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %36, align 8, !tbaa !11
  %37 = and i32 %i.b, 512
  %.not37.i = icmp eq i32 %37, 0
  br i1 %.not37.i, label %42, label %38

38:                                               ; preds = %filetype.exit.a
  %.tr40.i = trunc i32 %i.b to i8
  %39 = shl i8 %.tr40.i, 5
  %40 = and i8 %39, 32
  %41 = or disjoint i8 %40, 84
  br label %bb.c

42:                                               ; preds = %filetype.exit.a
  %43 = and i32 %i.b, 1
  %.not38.i = icmp eq i32 %43, 0
  %44 = select i1 %.not38.i, i8 45, i8 120
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @PyErr_Occurred() #3
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.split4, label %bb.d

.split4:                                          ; preds = %bb.b
  store <8 x i8> <i8 63, i8 114, i8 119, i8 115, i8 114, i8 119, i8 115, i8 114>, ptr %i.a, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 119, ptr %i.l, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %42, %38, %.split4
  %.sink = phi i8 [ 116, %.split4 ], [ %44, %42 ], [ %41, %38 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %.sink, ptr %i.m, align 1, !tbaa !11
  %i.n = call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef 10) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_PyLong_AsMode_t(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = tail call i64 @PyType_GetFlags(ptr noundef %.val) #3
  %i.c = and i64 %i.b, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @PyLong_AsUnsignedLong(ptr noundef nonnull %0) #3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyNumber_Index(ptr noundef nonnull %0) #3 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @PyLong_AsUnsignedLong(ptr noundef nonnull %i.e) #3
  tail call void @_Py_DecRef(ptr noundef nonnull %i.e) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.d ]  ; 3 uses
  %i.h = icmp eq i64 %.0, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @PyErr_Occurred() #3
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %.thread, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not14 = icmp ult i64 %.0, 4294967296
  br i1 %.not14, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.15) #3
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = trunc nuw i64 %.0 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.h, %.thread
  %.011 = phi i32 [ -1, %bb.c ], [ -1, %.thread ], [ %i.k, %bb.h ], [ -1, %bb.f ]
  ret i32 %.011
}

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @PyLong_AsUnsignedLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyType_GetFlags(ptr noundef) local_unnamed_addr #1

declare void @_Py_DecRef(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @stat_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef 16384) #3
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef 8192) #3
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef 24576) #3
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef 32768) #3
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef 4096) #3
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.aw, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef 40960) #3
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.aw, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef 49152) #3
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.aw, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef 0) #3
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.aw, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef 0) #3
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.aw, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef 0) #3
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.aw, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef 2048) #3
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.aw, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 1024) #3
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.aw, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 512) #3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.aw, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef 1024) #3
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.aw, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef 256) #3
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.aw, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 128) #3
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.aw, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 64) #3
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.aw, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef 448) #3
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.aw, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef 256) #3
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.aw, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef 128) #3
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.aw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef 64) #3
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.aw, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef 56) #3
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.aw, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
