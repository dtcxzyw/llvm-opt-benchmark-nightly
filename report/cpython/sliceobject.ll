Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/sliceobject?download=true
inline.NumInlined: 55
inline.NumDeleted: 23
begin_hunk_0_@_PySlice_FromIndices:bb.a
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %Py_DECREF.exit16.sink.split, label %Py_DECREF.exit16

bb.e:                                             ; preds = %bb.b
  %i.f = icmp ugt i32 %i.c, -1073741825
  br i1 %i.f, label %_Py_NewRef.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = add nuw i32 %i.c, 1
  store i32 %i.g, ptr %i.a, align 8, !tbaa !18
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.f, %bb.e
  %i.h = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %PySlice_New.exit, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit.i
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !18
  br label %PySlice_New.exit

PySlice_New.exit:                                 ; preds = %_Py_NewRef.exit.i, %bb.g
  %i.k = tail call fastcc ptr @_PyBuildSlice_Consume2(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @_Py_NoneStruct), !inline_history !29 ; 3 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.l, -1
  br i1 %.not.i13, label %bb.h, label %Py_DECREF.exit14

bb.h:                                             ; preds = %PySlice_New.exit
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !18
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit14

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %PySlice_New.exit, %bb.h, %bb.i
  %i.o = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit16

bb.j:                                             ; preds = %Py_DECREF.exit14
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.b, align 8, !tbaa !18
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit16.sink.split, label %Py_DECREF.exit16

Py_DECREF.exit16.sink.split:                      ; preds = %bb.j, %bb.d
  %.sink = phi ptr [ %i.a, %bb.d ], [ %i.b, %bb.j ]
  %.0.ph = phi ptr [ null, %bb.d ], [ %i.k, %bb.j ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #6
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %Py_DECREF.exit16.sink.split, %bb.j, %Py_DECREF.exit14, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.k, %bb.j ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.k, %Py_DECREF.exit14 ], [ %.0.ph, %Py_DECREF.exit16.sink.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PySlice_GetIndices(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_Py_NoneStruct
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val41 = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %.val41, i64 168
  %.val44 = load i64, ptr %i.e, align 8, !tbaa !56
  %i.f = and i64 %.val44, 16777216
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @PyLong_AsSsize_t(ptr noundef %i.b) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i64 [ %i.g, %bb.c ], [ 1, %bb.a ] ; 2 uses
  store i64 %storemerge, ptr %4, align 8, !tbaa !37
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 3 uses
  %i.j = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i64 %storemerge, 0
  %i.l = add i64 %1, -1
  %i.m = select i1 %i.k, i64 %i.l, i64 0
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %.val40 = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr i8, ptr %.val40, i64 168
  %.val43 = load i64, ptr %i.o, align 8, !tbaa !56
  %i.p = and i64 %.val43, 16777216
  %.not37 = icmp eq i64 %i.p, 0
  br i1 %.not37, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @PyLong_AsSsize_t(ptr noundef %i.i) #6 ; 3 uses
  store i64 %i.q, ptr %2, align 8, !tbaa !37
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %i.q, %1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.h
  %.sink = phi i64 [ %i.s, %bb.h ], [ %i.m, %bb.e ]
  store i64 %.sink, ptr %2, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %i.v = icmp eq ptr %i.u, @_Py_NoneStruct
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr %4, align 8, !tbaa !37
  %.inv = icmp sgt i64 %i.w, -1
  %i.x = select i1 %.inv, i64 %1, i64 -1
  br label %.sink.split51

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr i8, ptr %.val, i64 168
  %.val42 = load i64, ptr %i.z, align 8, !tbaa !56
  %i.aa = and i64 %.val42, 16777216
  %.not38 = icmp eq i64 %i.aa, 0
  br i1 %.not38, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i64 @PyLong_AsSsize_t(ptr noundef %i.u) #6 ; 4 uses
  store i64 %i.ab, ptr %3, align 8, !tbaa !37
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = add i64 %i.ab, %1
  br label %.sink.split51

.sink.split51:                                    ; preds = %bb.j, %bb.m
  %.sink52 = phi i64 [ %i.ad, %bb.m ], [ %i.x, %bb.j ] ; 2 uses
  store i64 %.sink52, ptr %3, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %.sink.split51, %bb.l
  %i.ae = phi i64 [ %i.ab, %bb.l ], [ %.sink52, %.sink.split51 ]
  %i.af = icmp sgt i64 %i.ae, %1
  br i1 %i.af, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr %2, align 8, !tbaa !37
  %.not39 = icmp slt i64 %i.ag, %1
  br i1 %.not39, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = load i64, ptr %4, align 8, !tbaa !37
  %i.ai = icmp eq i64 %i.ah, 0
  %. = sext i1 %i.ai to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.f, %bb.b
  %.0 = phi i32 [ -1, %bb.k ], [ -1, %bb.n ], [ %., %bb.p ], [ -1, %bb.o ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PySlice_Unpack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = icmp eq ptr %i.b, @_Py_NoneStruct
  br i1 %i.c, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyEval_SliceIndex(ptr noundef %i.b, ptr noundef %3) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %3, align 8, !tbaa !37     ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 0, label %bb.d
    i64 -9223372036854775808, label %.sink.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.1) #6
  br label %bb.l

.sink.split:                                      ; preds = %bb.c, %bb.a
  %.sink = phi i64 [ 1, %bb.a ], [ -9223372036854775807, %bb.c ] ; 2 uses
  store i64 %.sink, ptr %3, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.g = phi i64 [ %i.e, %bb.c ], [ %.sink, %.sink.split ]
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i64 %i.g, 0
  %i.l = select i1 %i.k, i64 9223372036854775807, i64 0
  store i64 %i.l, ptr %1, align 8, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i32 @_PyEval_SliceIndex(ptr noundef %i.i, ptr noundef %1) #6
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = icmp eq ptr %i.o, @_Py_NoneStruct
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = load i64, ptr %3, align 8, !tbaa !37
  %i.r = icmp slt i64 %i.q, 0
  %i.s = select i1 %i.r, i64 -9223372036854775808, i64 9223372036854775807
  store i64 %i.s, ptr %2, align 8, !tbaa !37
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.t = tail call i32 @_PyEval_SliceIndex(ptr noundef %i.o, ptr noundef %2) #6
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.b, %bb.k, %bb.d
  %.0 = phi i32 [ 0, %bb.k ], [ -1, %bb.g ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.j ]
  ret i32 %.0
}

declare i32 @_PyEval_SliceIndex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @PySlice_AdjustIndices(i64 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, %0                         ; 2 uses
  store i64 %i.c, ptr %1, align 8, !tbaa !37
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.lobit46 = ashr i64 %3, 63
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %.not = icmp slt i64 %i.a, %0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.lobit = ashr i64 %3, 63
  %i.e = add i64 %.lobit, %0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi i64 [ %i.e, %bb.e ], [ %.lobit46, %bb.c ]
  store i64 %.sink, ptr %1, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.b
  %i.f = load i64, ptr %2, align 8, !tbaa !37     ; 4 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = add i64 %i.f, %0                         ; 3 uses
  store i64 %i.h, ptr %2, align 8, !tbaa !37
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.lobit49 = ashr i64 %3, 63
  br label %.sink.split62

bb.i:                                             ; preds = %bb.f
  %.not47 = icmp slt i64 %i.f, %0
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.lobit48 = ashr i64 %3, 63
  %i.j = add i64 %.lobit48, %0
  br label %.sink.split62

.sink.split62:                                    ; preds = %bb.h, %bb.j
  %.sink63 = phi i64 [ %i.j, %bb.j ], [ %.lobit49, %bb.h ] ; 2 uses
  store i64 %.sink63, ptr %2, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %.sink.split62, %bb.i, %bb.g
  %i.k = phi i64 [ %i.f, %bb.i ], [ %i.h, %bb.g ], [ %.sink63, %.sink.split62 ] ; 4 uses
  %i.l = icmp slt i64 %3, 0
  %i.m = load i64, ptr %1, align 8, !tbaa !37     ; 4 uses
  br i1 %i.l, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.n = icmp slt i64 %i.k, %i.m
  br i1 %i.n, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.o = xor i64 %i.k, -1
  %i.p = add i64 %i.m, %i.o
  %i.q = sub i64 0, %3
  %i.r = sdiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, 1
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.t = icmp slt i64 %i.m, %i.k
  br i1 %i.t, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.u = xor i64 %i.m, -1
  %i.v = add i64 %i.k, %i.u
  %i.w = sdiv i64 %i.v, %3
  %i.x = add i64 %i.w, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.m
  %.0 = phi i64 [ %i.s, %bb.m ], [ %i.x, %bb.o ], [ 0, %bb.n ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PySlice_GetIndicesEx(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PySlice_Unpack(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !37     ; 7 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !37     ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, %1                         ; 2 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !37
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.lobit46.i = ashr i64 %i.c, 63
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp slt i64 %i.d, %1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.lobit.i = ashr i64 %i.c, 63
  %i.h = add i64 %.lobit.i, %1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.d
  %.sink.i = phi i64 [ %i.h, %bb.f ], [ %.lobit46.i, %bb.d ]
  store i64 %.sink.i, ptr %2, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %bb.e, %bb.c
  %i.i = load i64, ptr %3, align 8, !tbaa !37     ; 4 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = add i64 %i.i, %1                         ; 3 uses
  store i64 %i.k, ptr %3, align 8, !tbaa !37
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.lobit49.i = ashr i64 %i.c, 63
  br label %.sink.split62.i

bb.j:                                             ; preds = %bb.g
  %.not47.i = icmp slt i64 %i.i, %1
  br i1 %.not47.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.lobit48.i = ashr i64 %i.c, 63
  %i.m = add i64 %.lobit48.i, %1
  br label %.sink.split62.i
end_hunk_0
