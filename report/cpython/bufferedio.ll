inline.NumInlined: 217
inline.NumDeleted: 75
begin_hunk_0_@_bufferedwriter_flush_unlocked:bb.a
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %_set_BlockingIOError.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #9
  br label %_set_BlockingIOError.exit

bb.m:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !87
  %i.al = add i64 %i.ak, %i.ab                    ; 2 uses
  store i64 %i.al, ptr %i.e, align 8, !tbaa !87
  store i64 %i.al, ptr %i.h, align 8, !tbaa !83
  %i.am = tail call i32 @PyErr_CheckSignals() #9
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_set_BlockingIOError.exit, label %bb.g, !llvm.loop !88

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.b, %bb.c
  %i.ao = getelementptr i8, ptr %0, i64 88
  store i64 0, ptr %i.ao, align 8, !tbaa !87
  %i.ap = getelementptr i8, ptr %0, i64 96
  store i64 -1, ptr %i.ap, align 8, !tbaa !86
  br label %_set_BlockingIOError.exit

_set_BlockingIOError.exit:                        ; preds = %bb.m, %bb.h, %bb.l, %bb.k, %bb.j, %bb.i, %bb.d, %.loopexit
  %.0 = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.d ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -1, -9223372036854775808) i64 @_buffered_raw_seek(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyLong_FromSsize_t(i64 noundef %1) #9 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #9 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i26 = icmp sgt i32 %i.f, -1
  br i1 %.not.i26, label %bb.d, label %Py_DECREF.exit27

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit27

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #9
  br label %Py_DECREF.exit27

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98696), ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef null) #9 ; 5 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not.i24 = icmp sgt i32 %i.l, -1
  br i1 %.not.i24, label %bb.g, label %Py_DECREF.exit25

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !19
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit25

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #9
  br label %Py_DECREF.exit25

Py_DECREF.exit25:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.o, -1
  br i1 %.not.i22, label %bb.i, label %Py_DECREF.exit23

bb.i:                                             ; preds = %Py_DECREF.exit25
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !19
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %Py_DECREF.exit23

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit25, %bb.i, %bb.j
  %i.r = icmp eq ptr %i.k, null
  br i1 %i.r, label %Py_DECREF.exit27, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit23
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.t = tail call i64 @PyNumber_AsOff_t(ptr noundef nonnull %i.k, ptr noundef %i.s) #9 ; 4 uses
  %i.u = load i32, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.k, align 8, !tbaa !19
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.l, %bb.m
  %i.x = icmp slt i64 %i.t, 0
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %Py_DECREF.exit
  %i.y = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.o, label %Py_DECREF.exit27

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.aa = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.z, ptr noundef nonnull @.str.34, i64 noundef %i.t) #9 ; 0 uses
  br label %Py_DECREF.exit27

bb.p:                                             ; preds = %Py_DECREF.exit
  %i.ab = getelementptr i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !89
  br label %Py_DECREF.exit27

Py_DECREF.exit27:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.n, %bb.o, %Py_DECREF.exit23, %bb.a, %bb.p
  %.0 = phi i64 [ %i.t, %bb.p ], [ -1, %bb.n ], [ -1, %bb.a ], [ -1, %Py_DECREF.exit23 ], [ -1, %bb.o ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2, -9223372036854775808) i64 @_bufferedwriter_raw_write(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.c = call i32 @PyBuffer_FillInfo(ptr noundef nonnull %3, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 8) #9
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %Py_DECREF.exit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @PyMemoryView_FromBuffer(ptr noundef nonnull %3) #9 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit35, label %.split23

.split23:                                         ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #12    ; 4 uses
  store i32 0, ptr %i.g, align 4, !tbaa !7
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr %i.i, ptr %i.b, align 16, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.j, align 8, !tbaa !11
  %i.k = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104832), ptr noundef nonnull %i.b, i64 noundef -9223372036854775806, ptr noundef null) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.lr.ph, label %.critedge29

.lr.ph:                                           ; preds = %.split23
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.split
  %i.n = call i32 @_PyIO_trap_eintr()
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %.split, !llvm.loop !90

.split:                                           ; preds = %bb.c
  store i32 0, ptr %i.g, align 4, !tbaa !7
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %i.o, ptr %i.a, align 16, !tbaa !11
  store ptr %i.e, ptr %i.m, align 8, !tbaa !11
  %i.p = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104832), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %.critedge29, !llvm.loop !90

.critedge:                                        ; preds = %bb.c
  %i.r = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i34 = icmp sgt i32 %i.r, -1
  br i1 %.not.i34, label %bb.d, label %Py_DECREF.exit35

bb.d:                                             ; preds = %.critedge
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !19
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %Py_DECREF.exit35

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %Py_DECREF.exit35

.critedge29:                                      ; preds = %.split, %.split23
  %phi.call.lcssa = phi ptr [ %i.k, %.split23 ], [ %i.p, %.split ] ; 5 uses
  %.lcssa = load i32, ptr %i.g, align 4, !tbaa !7
  %i.u = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %.critedge29
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.e, align 8, !tbaa !19
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %.critedge29
  %i.x = icmp eq ptr %phi.call.lcssa, @_Py_NoneStruct
  br i1 %i.x, label %bb.h, label %bb.k

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.y = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i32 = icmp sgt i32 %i.y, -1
  br i1 %.not.i32, label %bb.i, label %Py_DECREF.exit33

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr @_Py_NoneStruct, align 8, !tbaa !19
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %Py_DECREF.exit33

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit33

Py_DECREF.exit33:                                 ; preds = %bb.h, %bb.i, %bb.j
  store i32 %.lcssa, ptr %i.g, align 4, !tbaa !7
  br label %Py_DECREF.exit35

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.ab = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.ac = call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %phi.call.lcssa, ptr noundef %i.ab) #9 ; 7 uses
  %i.ad = load i32, ptr %phi.call.lcssa, align 8, !tbaa !19 ; 2 uses
  %.not.i30 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i30, label %bb.l, label %Py_DECREF.exit31

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %phi.call.lcssa, align 8, !tbaa !19
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %Py_DECREF.exit31

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %phi.call.lcssa) #9
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.k, %bb.l, %bb.m
  %i.ag = icmp slt i64 %i.ac, 0
  %i.ah = icmp sgt i64 %i.ac, %2
  %or.cond = or i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Py_DECREF.exit31
  %i.ai = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.aj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.32, i64 noundef %i.ac, i64 noundef %2) #9 ; 0 uses
  br label %Py_DECREF.exit35

bb.o:                                             ; preds = %Py_DECREF.exit31
  %.not27 = icmp eq i64 %i.ac, 0
  br i1 %.not27, label %Py_DECREF.exit35, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89 ; 2 uses
  %.not28 = icmp eq i64 %i.al, -1
  br i1 %.not28, label %Py_DECREF.exit35, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = add i64 %i.al, %i.ac
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !89
  br label %Py_DECREF.exit35

Py_DECREF.exit35:                                 ; preds = %bb.e, %bb.d, %.critedge, %bb.o, %bb.p, %bb.q, %bb.b, %bb.a, %bb.n, %Py_DECREF.exit33
  %.0 = phi i64 [ 0, %bb.o ], [ -1, %bb.a ], [ -1, %bb.b ], [ -2, %Py_DECREF.exit33 ], [ -1, %bb.n ], [ %i.ac, %bb.q ], [ %i.ac, %bb.p ], [ -1, %.critedge ], [ -1, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_BlockingIOError(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @PyErr_Clear() #9
  %i.a = load ptr, ptr @PyExc_BlockingIOError, align 8, !tbaa !11
  %i.b = tail call ptr @__errno_location() #12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.a, ptr noundef nonnull @.str.33, i32 noundef %i.c, ptr noundef nonnull @.str.31, i64 noundef %0) #9 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_BlockingIOError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.e, ptr noundef nonnull %i.d) #9
  %i.f = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %.split

.split:                                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @PyErr_CheckSignals() local_unnamed_addr #1

declare i32 @PyBuffer_FillInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyMemoryView_FromBuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @PyNumber_AsOff_t(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2, -9223372036854775808) i64 @_bufferedreader_raw_read(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %struct.Py_buffer, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.c = call i32 @PyBuffer_FillInfo(ptr noundef nonnull %3, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 9) #9
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %Py_DECREF.exit36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @PyMemoryView_FromBuffer(ptr noundef nonnull %3) #9 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit36, label %.split23

.split23:                                         ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr %i.h, ptr %i.b, align 16, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.i, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97000), ptr noundef nonnull %i.b, i64 noundef -9223372036854775806, ptr noundef null) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.lr.ph, label %.critedge30

.lr.ph:                                           ; preds = %.split23
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.split
  %i.m = call i32 @_PyIO_trap_eintr()
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %.split, !llvm.loop !91

.split:                                           ; preds = %bb.c
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %i.n, ptr %i.a, align 16, !tbaa !11
  store ptr %i.e, ptr %i.l, align 8, !tbaa !11
  %i.o = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97000), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %.critedge30, !llvm.loop !91

.critedge:                                        ; preds = %bb.c
  %i.q = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i35 = icmp sgt i32 %i.q, -1
  br i1 %.not.i35, label %bb.d, label %Py_DECREF.exit36

bb.d:                                             ; preds = %.critedge
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.e, align 8, !tbaa !19
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %Py_DECREF.exit36

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %Py_DECREF.exit36

.critedge30:                                      ; preds = %.split, %.split23
  %phi.call.lcssa = phi ptr [ %i.j, %.split23 ], [ %i.o, %.split ] ; 5 uses
  %i.t = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %.critedge30
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %.critedge30
  %i.w = icmp eq ptr %phi.call.lcssa, @_Py_NoneStruct
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.x = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i33 = icmp sgt i32 %i.x, -1
  br i1 %.not.i33, label %bb.i, label %Py_DECREF.exit36

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr @_Py_NoneStruct, align 8, !tbaa !19
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %Py_DECREF.exit36

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit36

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.ab = call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %phi.call.lcssa, ptr noundef %i.aa) #9 ; 8 uses
  %i.ac = load i32, ptr %phi.call.lcssa, align 8, !tbaa !19 ; 2 uses
  %.not.i31 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i31, label %bb.l, label %Py_DECREF.exit32

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %phi.call.lcssa, align 8, !tbaa !19
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %Py_DECREF.exit32

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %phi.call.lcssa) #9
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %bb.k, %bb.l, %bb.m
  %i.af = icmp eq i64 %i.ab, -1
  br i1 %i.af, label %bb.n, label %bb.p

bb.n:                                             ; preds = %Py_DECREF.exit32
  %i.ag = call ptr @PyErr_Occurred() #9
  %.not27 = icmp eq ptr %i.ag, null
  br i1 %.not27, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.ai = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ah, ptr noundef nonnull @.str.35) #9 ; 0 uses
  br label %Py_DECREF.exit36

bb.p:                                             ; preds = %Py_DECREF.exit32
  %i.aj = icmp slt i64 %i.ab, 0
  %i.ak = icmp sgt i64 %i.ab, %2
  %or.cond = or i1 %i.aj, %i.ak
  br i1 %or.cond, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.n, %bb.p
  %i.al = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.am = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.36, i64 noundef %i.ab, i64 noundef %2) #9 ; 0 uses
  br label %Py_DECREF.exit36

bb.q:                                             ; preds = %bb.p
  %.not28 = icmp eq i64 %i.ab, 0
  br i1 %.not28, label %Py_DECREF.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !89 ; 2 uses
  %.not29 = icmp eq i64 %i.ao, -1
  br i1 %.not29, label %Py_DECREF.exit36, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = add i64 %i.ao, %i.ab
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !89
  br label %Py_DECREF.exit36

Py_DECREF.exit36:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %.critedge, %bb.q, %bb.r, %bb.s, %bb.b, %bb.a, %.thread, %bb.o
  %.0 = phi i64 [ 0, %bb.q ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.o ], [ -1, %.thread ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ], [ -1, %.critedge ], [ -1, %bb.d ], [ -2, %bb.h ], [ -2, %bb.i ], [ -2, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i64 %.0
}

declare ptr @_PyErr_FormatFromCause(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_detach(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_detach_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_detach_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i32 @_PyFile_Flush(ptr noundef nonnull %0) #9
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_io__Buffered_detach_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  store ptr null, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr i8, ptr %0, i64 28
  store i32 1, ptr %i.k, align 4, !tbaa !69
  store i32 0, ptr %i.a, align 8, !tbaa !61
  br label %_io__Buffered_detach_impl.exit

_io__Buffered_detach_impl.exit:                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.j, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_simple_flush(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_simple_flush_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_simple_flush_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 84456), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io__Buffered_simple_flush_impl.exit

_io__Buffered_simple_flush_impl.exit:             ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_close(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69
  %.not55.i = icmp eq i32 %i.g, 0
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not55.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_close_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_close_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 104        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = tail call i32 @PyThread_acquire_lock(ptr noundef %i.j, i32 noundef 0) #9
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc i32 @_enter_buffered_busy(ptr noundef nonnull %0)
  %.not45.i = icmp eq i32 %i.l, 0
  br i1 %.not45.i, label %_io__Buffered_close_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = tail call i64 @PyThread_get_thread_ident() #9
  %i.n = getelementptr i8, ptr %0, i64 112        ; 4 uses
  store volatile i64 %i.m, ptr %i.n, align 8, !tbaa !82
  %i.o = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %.not46.i = icmp eq ptr %i.p, null
  br i1 %.not46.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80
  %.not47.i = icmp eq i32 %i.r, 0
  br i1 %.not47.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@bufferedrwpair_readable:bb.a
}

; Function Attrs: nounwind uwtable
define internal ptr @bufferedrwpair_writable(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776)) #9 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776)) #9
  br label %_forward_call.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.e, ptr noundef null) #9 ; 3 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.f, label %_forward_call.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %_forward_call.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %_forward_call.exit

_forward_call.exit:                               ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bufferedrwpair_close(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864)) #9 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864)) #9
  br label %_forward_call.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.e, ptr noundef null) #9 ; 4 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.f, label %_forward_call.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %_forward_call.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %_forward_call.exit

_forward_call.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %i.l = icmp eq ptr %i.h, null
  br i1 %i.l, label %_forward_call.exit.thread, label %bb.h

_forward_call.exit.thread:                        ; preds = %bb.d, %bb.b, %_forward_call.exit
  %i.m = tail call ptr @PyErr_GetRaisedException() #9
  br label %Py_DECREF.exit18

bb.h:                                             ; preds = %_forward_call.exit
  %i.n = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.n, -1
  br i1 %.not.i17, label %bb.i, label %Py_DECREF.exit18

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.h, align 8, !tbaa !19
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %Py_DECREF.exit18

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #9
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.j, %bb.i, %bb.h, %_forward_call.exit.thread
  %.0 = phi ptr [ %i.m, %_forward_call.exit.thread ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit18
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit22

bb.l:                                             ; preds = %Py_DECREF.exit18
  %i.u = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.r, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864)) #9 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.w, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864)) #9
  br label %_forward_call.exit22

bb.n:                                             ; preds = %bb.l
  %i.x = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.u, ptr noundef null) #9 ; 3 uses
  %i.y = load i32, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not.i.i20 = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i20, label %bb.o, label %_forward_call.exit22

bb.o:                                             ; preds = %bb.n
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.u, align 8, !tbaa !19
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.p, label %_forward_call.exit22

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #9
  br label %_forward_call.exit22

_forward_call.exit22:                             ; preds = %bb.k, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i21 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ], [ %i.x, %bb.p ] ; 5 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %_forward_call.exit22
  tail call void @_PyErr_ChainExceptions1(ptr noundef nonnull %.0) #9
  %.not16 = icmp eq ptr %.0.i21, null
  br i1 %.not16, label %Py_DECREF.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %.0.i21, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.0.i21, align 8, !tbaa !19
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i21) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_forward_call.exit22
  %.1 = phi ptr [ %.0.i21, %_forward_call.exit22 ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @bufferedrwpair_isatty(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit10

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9
  br label %_forward_call.exit10

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.e, ptr noundef null) #9 ; 2 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.f, label %_forward_call.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %_forward_call.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %_forward_call.exit

_forward_call.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.not = icmp eq ptr %i.h, @_Py_FalseStruct
  br i1 %.not, label %bb.h, label %_forward_call.exit10

bb.h:                                             ; preds = %_forward_call.exit
  %i.l = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr @_Py_FalseStruct, align 8, !tbaa !19
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_FalseStruct) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit10

bb.l:                                             ; preds = %Py_DECREF.exit
  %i.s = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.u, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9
  br label %_forward_call.exit10

bb.n:                                             ; preds = %bb.l
  %i.v = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.s, ptr noundef null) #9 ; 3 uses
  %i.w = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %.not.i.i8 = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i8, label %bb.o, label %_forward_call.exit10

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.s, align 8, !tbaa !19
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %_forward_call.exit10

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #9
  br label %_forward_call.exit10

_forward_call.exit10:                             ; preds = %bb.d, %bb.b, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %_forward_call.exit
  %.0 = phi ptr [ %i.v, %bb.p ], [ %i.h, %_forward_call.exit ], [ null, %bb.k ], [ null, %bb.m ], [ %i.v, %bb.n ], [ %i.v, %bb.o ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

declare ptr @PyObject_CallObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @bufferedrwpair_closed_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.82) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_BufferedRandom___init__(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val45 = load i64, ptr %i.c, align 8, !tbaa !72
  %i.d = add i64 %.val45, %.val
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread49, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_BufferedRandom___init__._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %_io_BufferedRandom___init___impl.exit, label %.thread49

.thread49:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !11   ; 7 uses
  %.not42 = icmp eq i64 %i.n, 1
  br i1 %.not42, label %.thread54, label %bb.d

bb.d:                                             ; preds = %.thread49
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = call ptr @_PyNumber_Index(ptr noundef %i.q) #9 ; 5 uses
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #9 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %.thread54

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #9
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.thread54, label %_io_BufferedRandom___init___impl.exit

.thread54:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %.thread49
  %.1 = phi i64 [ 131072, %.thread49 ], [ %i.s, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.y = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ab = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_PyIO_Module) #9
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ad = call ptr @_PyIOBase_check_seekable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_io_BufferedRandom___init___impl.exit, label %bb.h

bb.h:                                             ; preds = %.thread54
  %i.af = call ptr @_PyIOBase_check_readable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_io_BufferedRandom___init___impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call ptr @_PyIOBase_check_writable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_io_BufferedRandom___init___impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, -1073741825
  br i1 %i.ak, label %Py_INCREF.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %i.o, align 8, !tbaa !19
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.k, %bb.j
  %i.am = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11 ; 4 uses
  store ptr %i.o, ptr %i.am, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.l

bb.l:                                             ; preds = %Py_INCREF.exit.i
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.i.i, label %bb.m, label %Py_XDECREF.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !19
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %Py_XDECREF.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #9
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.n, %bb.m, %bb.l, %Py_INCREF.exit.i
  %i.ar = getelementptr i8, ptr %0, i64 120
end_hunk_1
