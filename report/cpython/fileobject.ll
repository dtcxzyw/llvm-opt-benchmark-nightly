inline.NumInlined: 43
inline.NumDeleted: 20
begin_hunk_0_@PyFile_GetLine
define dso_local ptr @PyFile_GetLine(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@PyFile_GetLine:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %i.f, %bb.e ], [ %i.e, %bb.d ] ; 13 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %Py_DECREF.exit47.thread, label %bb.g
end_hunk_1
begin_hunk_2_@PyFile_GetLine:bb.a
bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  %i.l = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull %i.g) #8 ; 0 uses
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.m = load i32, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not.i46 = icmp sgt i32 %i.m, -1
  br i1 %.not.i46, label %bb.i, label %Py_DECREF.exit47.thread

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.g, align 8, !tbaa !11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit47.thread

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit47.thread

Py_DECREF.exit47.thread:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.p = icmp slt i32 %1, 0
  br label %bb.r

Py_DECREF.exit47:                                 ; preds = %bb.g
  %i.q = icmp slt i32 %1, 0
  br i1 %i.q, label %bb.k, label %bb.r

bb.k:                                             ; preds = %Py_DECREF.exit47
  %i.r = getelementptr i8, ptr %i.g, i64 8
  %.val51 = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %.val51, i64 168
  %.val54 = load i64, ptr %i.s, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@PyFile_GetLine:bb.a
  br i1 %.not40, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %i.g, i64 16
  %.val57 = load i64, ptr %i.u, align 8, !tbaa !27 ; 2 uses
  %i.v = icmp eq i64 %.val57, 0
  br i1 %i.v, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.w = load i32, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not.i44 = icmp sgt i32 %i.w, -1
  br i1 %.not.i44, label %bb.n, label %Py_DECREF.exit45

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.g, align 8, !tbaa !11
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.o, label %Py_DECREF.exit45

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %bb.m, %bb.n, %bb.o
end_hunk_3
begin_hunk_4_@PyFile_GetLine:bb.a
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %i.g, i64 32
  %i.ab = add i64 %.val57, -1                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
end_hunk_4
begin_hunk_5_@PyFile_GetLine:bb.a
  br label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit47.thread, %Py_DECREF.exit45, %bb.q, %bb.p, %bb.k, %Py_DECREF.exit47
  %i.ag = phi i1 [ %i.p, %Py_DECREF.exit47.thread ], [ true, %Py_DECREF.exit45 ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.k ], [ false, %Py_DECREF.exit47 ]
  %i.ah = load ptr, ptr %i.b, align 8             ; 14 uses
  %i.ai = icmp ne ptr %i.ah, null
  %or.cond3 = select i1 %i.ag, i1 %i.ai, i1 false
end_hunk_5
