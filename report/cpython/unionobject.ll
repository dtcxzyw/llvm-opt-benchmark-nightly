Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unionobject?download=true
inline.NumInlined: 69
inline.NumDeleted: 26
begin_hunk_0_@_Py_union_type_or:bb.a
  %2 = alloca %struct.unionbuilder, align 8       ; 10 uses
  %i.a = icmp eq ptr %0, @_Py_NoneStruct
  br i1 %i.a, label %is_unionable.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !16 ; 3 uses
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val.val.i = load i64, ptr %i.c, align 8, !tbaa !26
  %i.d = and i64 %.val.val.i, 2147483648
  %i.e = icmp ne i64 %i.d, 0
  %.not.i.i = icmp eq ptr %.val.i, @Py_GenericAliasType
  %or.cond.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond.i, label %is_unionable.exit.thread, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @Py_GenericAliasType) #6, !inline_history !53
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %is_unionable.exit.thread

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i
  %.val10.i = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.not13.i = icmp eq ptr %.val10.i, @_PyUnion_Type
  %.not14.i.not = icmp eq ptr %.val10.i, @_PyTypeAlias_Type
  %or.cond = or i1 %.not13.i, %.not14.i.not
  br i1 %or.cond, label %is_unionable.exit.thread, label %bb.u

is_unionable.exit.thread:                         ; preds = %bb.b, %PyObject_TypeCheck.exit.i, %bb.c, %bb.a
  %i.g = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.g, label %is_unionable.exit18.thread, label %bb.d

bb.d:                                             ; preds = %is_unionable.exit.thread
  %i.h = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val.i7 = load ptr, ptr %i.h, align 8, !tbaa !16 ; 3 uses
  %i.i = getelementptr i8, ptr %.val.i7, i64 168
  %.val.val.i8 = load i64, ptr %i.i, align 8, !tbaa !26
  %i.j = and i64 %.val.val.i8, 2147483648
  %i.k = icmp ne i64 %i.j, 0
  %.not.i.i9 = icmp eq ptr %.val.i7, @Py_GenericAliasType
  %or.cond.i10 = or i1 %.not.i.i9, %i.k
  br i1 %or.cond.i10, label %is_unionable.exit18.thread, label %PyObject_TypeCheck.exit.i11

PyObject_TypeCheck.exit.i11:                      ; preds = %bb.d
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i7, ptr noundef nonnull @Py_GenericAliasType) #6, !inline_history !53
  %.not.i12 = icmp eq i32 %i.l, 0
  br i1 %.not.i12, label %bb.e, label %is_unionable.exit18.thread

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.i11
  %.val10.i14 = load ptr, ptr %i.h, align 8, !tbaa !16 ; 2 uses
  %.not13.i15 = icmp eq ptr %.val10.i14, @_PyUnion_Type
  %.not14.i16.not = icmp eq ptr %.val10.i14, @_PyTypeAlias_Type
  %or.cond27 = or i1 %.not13.i15, %.not14.i16.not
  br i1 %or.cond27, label %is_unionable.exit18.thread, label %bb.u

is_unionable.exit18.thread:                       ; preds = %bb.d, %PyObject_TypeCheck.exit.i11, %bb.e, %is_unionable.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.m = tail call ptr @PyList_New(i64 noundef 0) #6 ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !29
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %unionbuilder_finalize.exit, label %bb.f

bb.f:                                             ; preds = %is_unionable.exit18.thread
  %i.o = tail call ptr @PySet_New(ptr noundef null) #6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !30
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %.not.i.i20 = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i20, label %bb.h, label %unionbuilder_finalize.exit

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.m, align 8, !tbaa !31
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %unionbuilder_finalize.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #6
  br label %unionbuilder_finalize.exit

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.v, align 8, !tbaa !33
  %i.w = call fastcc zeroext i1 @unionbuilder_add_single(ptr noundef %2, ptr noundef %0)
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = call fastcc zeroext i1 @unionbuilder_add_single(ptr noundef %2, ptr noundef %1)
  br i1 %i.x, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %.not.i3.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i3.i, label %bb.m, label %Py_DECREF.exit4.i

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %Py_DECREF.exit4.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #6
  br label %Py_DECREF.exit4.i

Py_DECREF.exit4.i:                                ; preds = %bb.n, %bb.m, %bb.l
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !30  ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not.i.i21 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i21, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %Py_DECREF.exit4.i
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !31
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.p, %bb.o, %Py_DECREF.exit4.i
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !32  ; 4 uses
  %.not.i6.i = icmp eq ptr %i.ag, null
  br i1 %.not.i6.i, label %unionbuilder_finalize.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit.i
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i.i, label %bb.r, label %unionbuilder_finalize.exit

bb.r:                                             ; preds = %bb.q
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !31
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.s, label %unionbuilder_finalize.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #6
  br label %unionbuilder_finalize.exit

bb.t:                                             ; preds = %bb.k
  %i.ak = call fastcc ptr @make_union(ptr noundef %2)
  br label %unionbuilder_finalize.exit

unionbuilder_finalize.exit:                       ; preds = %bb.i, %bb.h, %bb.g, %is_unionable.exit18.thread, %bb.s, %bb.r, %bb.q, %Py_DECREF.exit.i, %bb.t
  %.0 = phi ptr [ %i.ak, %bb.t ], [ null, %bb.s ], [ null, %Py_DECREF.exit.i ], [ null, %bb.q ], [ null, %bb.r ], [ null, %is_unionable.exit18.thread ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.c, %unionbuilder_finalize.exit
  %.1 = phi ptr [ %.0, %unionbuilder_finalize.exit ], [ @_Py_NotImplementedStruct, %bb.e ], [ @_Py_NotImplementedStruct, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @unionbuilder_add_single(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !16
  %.not = icmp eq ptr %.val, @_PyUnion_Type
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %.not.i17.not23 = icmp sgt i64 %.val.i, 0
  br i1 %.not.i17.not23, label %.lr.ph, label %unionbuilder_add_tuple.exit

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph
  %.08.i24 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.08.i24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = tail call fastcc zeroext i1 @unionbuilder_add_single(ptr noundef nonnull %0, ptr noundef %i.i), !inline_history !0 ; 2 uses
  %i.k = add nuw nsw i64 %.08.i24, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.k, %.val.i
  %or.cond.not = select i1 %i.j, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %unionbuilder_add_tuple.exit, !llvm.loop !1

bb.e:                                             ; preds = %bb.a, %bb.b
  %.014 = phi ptr [ %1, %bb.b ], [ @_PyNone_Type, %bb.a ] ; 8 uses
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !33, !range !56, !noundef !57
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %2, label %bb.v

2:                                                ; preds = %bb.e
  %3 = icmp eq ptr %.014, @_Py_NoneStruct
  %4 = getelementptr i8, ptr %.014, i64 8         ; 2 uses
  %.val.i18 = load ptr, ptr %4, align 8, !tbaa !16 ; 4 uses
  br i1 %3, label %type_check.exit, label %bb.f

bb.f:                                             ; preds = %2
  %i.o = getelementptr i8, ptr %.val.i18, i64 168
  %.val.val.i.i = load i64, ptr %i.o, align 8, !tbaa !26
  %i.p = and i64 %.val.val.i.i, 2147483648
  %i.q = icmp ne i64 %i.p, 0
  %.not.i.i.i = icmp eq ptr %.val.i18, @Py_GenericAliasType
  %or.cond.i.i = or i1 %.not.i.i.i, %i.q
  br i1 %or.cond.i.i, label %is_unionable.exit.thread.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.f
  %i.r = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i18, ptr noundef nonnull @Py_GenericAliasType) #6, !inline_history !54
  %.not.i14.i = icmp eq i32 %i.r, 0
  br i1 %.not.i14.i, label %bb.g, label %is_unionable.exit.thread.i

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %.val10.i.i = load ptr, ptr %4, align 8, !tbaa !16 ; 2 uses
  %.not13.i.i = icmp eq ptr %.val10.i.i, @_PyUnion_Type
  %.not14.i.not.i = icmp eq ptr %.val10.i.i, @_PyTypeAlias_Type
  %or.cond.i = or i1 %.not13.i.i, %.not14.i.not.i
  br i1 %or.cond.i, label %is_unionable.exit.thread.i, label %bb.i

is_unionable.exit.thread.i:                       ; preds = %bb.g, %PyObject_TypeCheck.exit.i.i, %bb.f
  %i.s = load i32, ptr %.014, align 8, !tbaa !31  ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %type_check.exit, label %bb.h

bb.h:                                             ; preds = %is_unionable.exit.thread.i
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %.014, align 8, !tbaa !31
  br label %type_check.exit

bb.i:                                             ; preds = %bb.g
  %i.v = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.2) #6, !inline_history !55 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %unionbuilder_add_tuple.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %.014, ptr %i.a, align 16, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !37
  %i.y = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.4) #6, !inline_history !55 ; 7 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %call_typing_func_object.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.3) #6, !inline_history !55 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !31  ; 2 uses
  %.not.i15.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i15.i.i, label %bb.m, label %call_typing_func_object.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !31
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit16.sink.split.i.i, label %call_typing_func_object.exit.i

bb.n:                                             ; preds = %bb.k
  %i.af = call ptr @PyObject_Vectorcall(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, i64 noundef 2, ptr noundef null) #6, !inline_history !55 ; 3 uses
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %.not.i13.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i13.i.i, label %bb.o, label %Py_DECREF.exit14.i.i

bb.o:                                             ; preds = %bb.n
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.aa, align 8, !tbaa !31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %Py_DECREF.exit14.i.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #6, !inline_history !55
  br label %Py_DECREF.exit14.i.i

Py_DECREF.exit14.i.i:                             ; preds = %bb.p, %bb.o, %bb.n
  %i.aj = load i32, ptr %i.y, align 8, !tbaa !31  ; 2 uses
  %.not.i.i15.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i15.i, label %bb.q, label %call_typing_func_object.exit.i

bb.q:                                             ; preds = %Py_DECREF.exit14.i.i
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !31
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %Py_DECREF.exit16.sink.split.i.i, label %call_typing_func_object.exit.i

Py_DECREF.exit16.sink.split.i.i:                  ; preds = %bb.q, %bb.m
  %.1.ph.i.i = phi ptr [ null, %bb.m ], [ %i.af, %bb.q ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #6, !inline_history !55
  br label %call_typing_func_object.exit.i

call_typing_func_object.exit.i:                   ; preds = %Py_DECREF.exit16.sink.split.i.i, %bb.q, %Py_DECREF.exit14.i.i, %bb.m, %bb.l, %bb.j
  %.1.i.i = phi ptr [ null, %bb.j ], [ %i.af, %bb.q ], [ null, %bb.l ], [ null, %bb.m ], [ %i.af, %Py_DECREF.exit14.i.i ], [ %.1.ph.i.i, %Py_DECREF.exit16.sink.split.i.i ]
  %i.am = load i32, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %call_typing_func_object.exit.i
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.v, align 8, !tbaa !31
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %5, label %bb.s

5:                                                ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.v) #6, !inline_history !55
  br label %bb.s

bb.s:                                             ; preds = %5, %bb.r, %call_typing_func_object.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %type_check.exit

type_check.exit:                                  ; preds = %2, %is_unionable.exit.thread.i, %bb.h, %bb.s
  %.1.i = phi ptr [ %.014, %bb.h ], [ %.val.i18, %2 ], [ %.1.i.i, %bb.s ], [ %.014, %is_unionable.exit.thread.i ] ; 5 uses
  %i.ap = icmp eq ptr %.1.i, null
  br i1 %i.ap, label %unionbuilder_add_tuple.exit, label %type_check.exit.thread

type_check.exit.thread:                           ; preds = %type_check.exit
  %i.aq = call fastcc zeroext i1 @unionbuilder_add_single_unchecked(ptr noundef %0, ptr noundef nonnull %.1.i) ; 3 uses
  %i.ar = load i32, ptr %.1.i, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i, label %bb.t, label %unionbuilder_add_tuple.exit

bb.t:                                             ; preds = %type_check.exit.thread
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %.1.i, align 8, !tbaa !31
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.u, label %unionbuilder_add_tuple.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #6
  br label %unionbuilder_add_tuple.exit

bb.v:                                             ; preds = %bb.e
  %i.au = tail call fastcc zeroext i1 @unionbuilder_add_single_unchecked(ptr noundef %0, ptr noundef %.014)
  br label %unionbuilder_add_tuple.exit

unionbuilder_add_tuple.exit:                      ; preds = %bb.d, %bb.c, %bb.i, %bb.u, %bb.t, %type_check.exit.thread, %type_check.exit, %bb.v
  %.1 = phi i1 [ false, %type_check.exit ], [ %i.au, %bb.v ], [ %i.aq, %bb.u ], [ %i.aq, %bb.t ], [ false, %bb.i ], [ %i.aq, %type_check.exit.thread ], [ true, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_union(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !36
  switch i64 %.val, label %bb.s [
    i64 0, label %bb.b
    i64 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !37
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.24) #6
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not.i3.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i3.i, label %bb.c, label %Py_DECREF.exit4.i

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit4.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #6
  br label %Py_DECREF.exit4.i

Py_DECREF.exit4.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.e, label %Py_DECREF.exit.i

bb.e:                                             ; preds = %Py_DECREF.exit4.i
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.f, %bb.e, %Py_DECREF.exit4.i
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 4 uses
  %.not.i6.i = icmp eq ptr %i.n, null
  br i1 %.not.i6.i, label %unionbuilder_finalize.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i.i, label %bb.h, label %unionbuilder_finalize.exit

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !31
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %unionbuilder_finalize.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #6
  br label %unionbuilder_finalize.exit

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %i.a, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 6 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = icmp ugt i32 %i.u, -1073741825
  br i1 %i.v, label %Py_INCREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw i32 %i.u, 1
  store i32 %i.w, ptr %i.t, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.j, %bb.k
  %i.x = phi ptr [ %i.a, %bb.j ], [ %.pre, %bb.k ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %.not.i3.i42 = icmp sgt i32 %i.y, -1
  br i1 %.not.i3.i42, label %bb.l, label %Py_DECREF.exit4.i43

bb.l:                                             ; preds = %Py_INCREF.exit
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !31
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.m, label %Py_DECREF.exit4.i43

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #6
  br label %Py_DECREF.exit4.i43

Py_DECREF.exit4.i43:                              ; preds = %bb.m, %bb.l, %Py_INCREF.exit
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not.i.i44 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i44, label %bb.n, label %Py_DECREF.exit.i45

bb.n:                                             ; preds = %Py_DECREF.exit4.i43
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !31
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %Py_DECREF.exit.i45

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #6
  br label %Py_DECREF.exit.i45

Py_DECREF.exit.i45:                               ; preds = %bb.o, %bb.n, %Py_DECREF.exit4.i43
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 4 uses
  %.not.i6.i46 = icmp eq ptr %i.ah, null
  br i1 %.not.i6.i46, label %unionbuilder_finalize.exit, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit.i45
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i47 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i.i47, label %bb.q, label %unionbuilder_finalize.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !31
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %unionbuilder_finalize.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #6
  br label %unionbuilder_finalize.exit

bb.s:                                             ; preds = %bb.a
  %i.al = tail call ptr @PyList_AsTuple(ptr noundef nonnull %i.a) #6 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %Py_XDECREF.exit65, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ap = tail call ptr @PyFrozenSet_New(ptr noundef %i.ao) #6 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null                 ; 2 uses
  br i1 %i.aq, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = tail call ptr @PyList_AsTuple(ptr noundef nonnull %i.as) #6 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.031 = phi ptr [ %i.at, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.av = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyUnion_Type) #6 ; 10 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %.not.i3.i49 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i3.i49, label %bb.y, label %Py_DECREF.exit4.i50

bb.y:                                             ; preds = %bb.x
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !31
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.z, label %Py_DECREF.exit4.i50

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #6
  br label %Py_DECREF.exit4.i50

Py_DECREF.exit4.i50:                              ; preds = %bb.z, %bb.y, %bb.x
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !30 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !31 ; 2 uses
  %.not.i.i51 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i51, label %bb.aa, label %Py_DECREF.exit.i52

bb.aa:                                            ; preds = %Py_DECREF.exit4.i50
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !31
end_hunk_0
