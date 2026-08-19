inline.NumInlined: 446
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@treebuilder_handle_start:bb.a
Py_DECREF.exit69:                                 ; preds = %_Py_NewRef.exit80, %bb.aa, %bb.ab
  %i.bq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 3 uses
  %i.bs = load i32, ptr %.055, align 8, !tbaa !26 ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, -1073741825
  br i1 %i.bt, label %_Py_NewRef.exit81, label %bb.ac

bb.ac:                                            ; preds = %Py_DECREF.exit69
  %i.bu = add nuw i32 %i.bs, 1
  store i32 %i.bu, ptr %.055, align 8, !tbaa !26
  br label %_Py_NewRef.exit81

_Py_NewRef.exit81:                                ; preds = %Py_DECREF.exit69, %bb.ac
  store ptr %.055, ptr %i.bq, align 8, !tbaa !25
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !26 ; 2 uses
  %.not.i66 = icmp sgt i32 %i.bv, -1
  br i1 %.not.i66, label %bb.ad, label %Py_DECREF.exit67

bb.ad:                                            ; preds = %_Py_NewRef.exit81
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.br, align 8, !tbaa !26
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %Py_DECREF.exit67

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.br) #11
  br label %Py_DECREF.exit67

Py_DECREF.exit67:                                 ; preds = %_Py_NewRef.exit81, %bb.ad, %bb.ae
  %i.by = getelementptr i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !94 ; 2 uses
  %.not.i82 = icmp eq ptr %i.bz, null
  br i1 %.not.i82, label %Py_DECREF.exit, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit67
  %i.ca = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.bz, ptr noundef nonnull %.055) #11 ; 5 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %treebuilder_append_event.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = getelementptr i8, ptr %0, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95
  %i.ce = tail call ptr @PyObject_CallOneArg(ptr noundef %i.cd, ptr noundef nonnull %i.ca) #11 ; 4 uses
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %.not.i14.i = icmp sgt i32 %i.cf, -1
  br i1 %.not.i14.i, label %bb.ah, label %Py_DECREF.exit15.i

bb.ah:                                            ; preds = %bb.ag
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.ca, align 8, !tbaa !26
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ai, label %Py_DECREF.exit15.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ca) #11
  br label %Py_DECREF.exit15.i

Py_DECREF.exit15.i:                               ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ci = icmp eq ptr %i.ce, null
  br i1 %i.ci, label %treebuilder_append_event.exit, label %bb.aj

bb.aj:                                            ; preds = %Py_DECREF.exit15.i
  %i.cj = load i32, ptr %i.ce, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i.i, label %bb.ak, label %Py_DECREF.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.ce, align 8, !tbaa !26
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

treebuilder_append_event.exit:                    ; preds = %Py_DECREF.exit15.i, %bb.af, %bb.y, %bb.v, %bb.p, %bb.r
  %i.cm = load i32, ptr %.055, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.cm, -1
  br i1 %.not.i, label %bb.al, label %Py_DECREF.exit

bb.al:                                            ; preds = %treebuilder_append_event.exit
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %.055, align 8, !tbaa !26
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

Py_DECREF.exit.sink.split:                        ; preds = %bb.al, %bb.ak
  %.sink = phi ptr [ %i.ce, %bb.ak ], [ %.055, %bb.al ]
  %.0.ph = phi ptr [ %.055, %bb.ak ], [ null, %bb.al ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit.sink.split, %bb.ak, %bb.aj, %Py_DECREF.exit67, %bb.al, %treebuilder_append_event.exit, %Py_DECREF.exit73, %bb.g, %treebuilder_flush_data.exit
  %.0 = phi ptr [ null, %treebuilder_flush_data.exit ], [ %.055, %bb.ak ], [ null, %Py_DECREF.exit73 ], [ null, %bb.g ], [ null, %treebuilder_append_event.exit ], [ null, %bb.al ], [ %.055, %Py_DECREF.exit67 ], [ %.055, %bb.aj ], [ %.0.ph, %Py_DECREF.exit.sink.split ]
  ret ptr %.0
}

declare ptr @PyObject_CallFunctionObjArgs(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @treebuilder_add_subelement(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !30
  %.not = icmp eq ptr %.val, %i.c
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, %i.c
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef %i.c) #11
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %bb.c, label %PyObject_TypeCheck.exit.thread.i

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i
  %.val8.i = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr i8, ptr %.val8.i, i64 24
  %.val8.val.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.7, ptr noundef %.val8.val.i) #11 ; 0 uses
  br label %element_add_subelement.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.b
  %i.j = tail call fastcc i32 @element_resize(ptr noundef nonnull %1, i64 noundef 1)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %element_add_subelement.exit, label %bb.d

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.l = load i32, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_NewRef.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %2, align 8, !tbaa !26
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.e, %bb.d
  %i.o = getelementptr i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.t
  store ptr %2, ptr %i.u, align 8, !tbaa !25
  %i.v = add i64 %i.t, 1
  store i64 %i.v, ptr %i.s, align 8, !tbaa !47
  br label %element_add_subelement.exit

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %1, ptr %i.a, align 16, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.y, align 8, !tbaa !25
  %i.z = call ptr @PyObject_VectorcallMethod(ptr noundef %i.x, ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %element_add_subelement.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.h, label %element_add_subelement.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !26
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %element_add_subelement.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.z) #11
  br label %element_add_subelement.exit

element_add_subelement.exit:                      ; preds = %bb.i, %bb.h, %bb.g, %_Py_NewRef.exit.i, %PyObject_TypeCheck.exit.thread.i, %bb.c, %bb.f
  %.1 = phi i32 [ -1, %bb.f ], [ -1, %PyObject_TypeCheck.exit.thread.i ], [ -1, %bb.c ], [ 0, %_Py_NewRef.exit.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

declare i32 @PyList_SetItem(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @treebuilder_extend_element_text_or_tail(ptr nofree readnone captures(address) %.104.val, ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val82 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq ptr %.val82, %.104.val
  br i1 %.not, label %bb.b, label %Py_DECREF.exit74

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !25
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, -2                         ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp eq i64 %i.d, ptrtoint (ptr @_Py_NoneStruct to i64)
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -2
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.k = icmp eq ptr %.val, @PyList_Type
  %i.l = zext i1 %i.k to i64
  %i.m = or disjoint i64 %i.i, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %2, align 8, !tbaa !25
  store ptr null, ptr %1, align 8, !tbaa !25
  %i.o = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !26 ; 2 uses
  %.not.i73 = icmp sgt i32 %i.o, -1
  br i1 %.not.i73, label %bb.d, label %Py_DECREF.exit70

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr @_Py_NoneStruct, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit70.sink.split, label %Py_DECREF.exit70

bb.e:                                             ; preds = %bb.b
  %i.r = and i64 %i.c, 1
  %.not54 = icmp eq i64 %i.r, 0
  br i1 %.not54, label %Py_DECREF.exit74, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %1, align 8, !tbaa !25
  %i.t = tail call i32 @PyList_SetSlice(ptr noundef %i.e, i64 noundef 9223372036854775807, i64 noundef 9223372036854775807, ptr noundef %i.s) #11
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit70, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !25     ; 4 uses
  %.not55 = icmp eq ptr %i.v, null
  br i1 %.not55, label %Py_DECREF.exit70, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %1, align 8, !tbaa !25
  %i.w = load i32, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %.not.i71 = icmp sgt i32 %i.w, -1
  br i1 %.not.i71, label %bb.i, label %Py_DECREF.exit70

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !26
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit70.sink.split, label %Py_DECREF.exit70

Py_DECREF.exit74:                                 ; preds = %bb.e, %bb.a
  %i.z = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %0, ptr noundef %3) #11 ; 9 uses
  %.not56 = icmp eq ptr %i.z, null
  br i1 %.not56, label %Py_DECREF.exit70, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit74
  %i.aa = load ptr, ptr %1, align 8, !tbaa !25
  %i.ab = tail call ptr @Py_GetConstant(i32 noundef 7) #11 ; 5 uses
  %.not.i83 = icmp eq ptr %i.ab, null
  br i1 %.not.i83, label %list_join.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @PyUnicode_Join(ptr noundef nonnull %i.ab, ptr noundef %i.aa) #11 ; 8 uses
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i, label %bb.l, label %list_join.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %list_join.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #11
  br label %list_join.exit

list_join.exit:                                   ; preds = %bb.k, %bb.l, %bb.m
  %.not57 = icmp eq ptr %i.ac, null
  br i1 %.not57, label %list_join.exit.thread, label %bb.o

list_join.exit.thread:                            ; preds = %bb.j, %list_join.exit
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %.not.i69 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i69, label %bb.n, label %Py_DECREF.exit70

bb.n:                                             ; preds = %list_join.exit.thread
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %Py_DECREF.exit70.sink.split, label %Py_DECREF.exit70

bb.o:                                             ; preds = %list_join.exit
  %.not58 = icmp eq ptr %i.z, @_Py_NoneStruct
  br i1 %.not58, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call ptr @PyNumber_Add(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac) #11 ; 2 uses
  %i.ak = load i32, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not.i67 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i67, label %bb.q, label %Py_DECREF.exit68

bb.q:                                             ; preds = %bb.p
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !26
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.r, label %Py_DECREF.exit68

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #11
  br label %Py_DECREF.exit68

Py_DECREF.exit68:                                 ; preds = %bb.p, %bb.q, %bb.r
  %i.an = load i32, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %.not.i65 = icmp sgt i32 %i.an, -1
  br i1 %.not.i65, label %bb.s, label %Py_DECREF.exit66

bb.s:                                             ; preds = %Py_DECREF.exit68
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.z, align 8, !tbaa !26
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.t, label %Py_DECREF.exit66

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #11
  br label %Py_DECREF.exit66

Py_DECREF.exit66:                                 ; preds = %Py_DECREF.exit68, %bb.s, %bb.t
  %.not59.not = icmp eq ptr %i.aj, null
  br i1 %.not59.not, label %Py_DECREF.exit70, label %Py_DECREF.exit64

bb.u:                                             ; preds = %bb.o
  %i.aq = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !26 ; 2 uses
  %.not.i63 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i63, label %bb.v, label %Py_DECREF.exit64

bb.v:                                             ; preds = %bb.u
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr @_Py_NoneStruct, align 8, !tbaa !26
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.w, label %Py_DECREF.exit64

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #11
  br label %Py_DECREF.exit64

Py_DECREF.exit64:                                 ; preds = %bb.w, %bb.v, %bb.u, %Py_DECREF.exit66
  %.1 = phi ptr [ %i.aj, %Py_DECREF.exit66 ], [ %i.ac, %bb.u ], [ %i.ac, %bb.v ], [ %i.ac, %bb.w ] ; 4 uses
  %i.at = tail call i32 @PyObject_SetAttr(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %.1) #11
  %i.au = load i32, ptr %.1, align 8, !tbaa !26   ; 2 uses
  %.not.i61 = icmp sgt i32 %i.au, -1
  br i1 %.not.i61, label %bb.x, label %Py_DECREF.exit62

bb.x:                                             ; preds = %Py_DECREF.exit64
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %.1, align 8, !tbaa !26
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.y, label %Py_DECREF.exit62

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #11
  br label %Py_DECREF.exit62

Py_DECREF.exit62:                                 ; preds = %Py_DECREF.exit64, %bb.x, %bb.y
  %i.ax = icmp slt i32 %i.at, 0
  br i1 %i.ax, label %Py_DECREF.exit70, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit62
  %i.ay = load ptr, ptr %1, align 8, !tbaa !25    ; 4 uses
  %.not60 = icmp eq ptr %i.ay, null
  br i1 %.not60, label %Py_DECREF.exit70, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %1, align 8, !tbaa !25
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i, label %bb.ab, label %Py_DECREF.exit70

bb.ab:                                            ; preds = %bb.aa
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !26
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %Py_DECREF.exit70.sink.split, label %Py_DECREF.exit70

Py_DECREF.exit70.sink.split:                      ; preds = %bb.ab, %bb.n, %bb.i, %bb.d
  %.sink = phi ptr [ @_Py_NoneStruct, %bb.d ], [ %i.v, %bb.i ], [ %i.z, %bb.n ], [ %i.ay, %bb.ab ]
  %.4.ph = phi i32 [ 0, %bb.d ], [ 0, %bb.i ], [ -1, %bb.n ], [ 0, %bb.ab ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #11
  br label %Py_DECREF.exit70

Py_DECREF.exit70:                                 ; preds = %Py_DECREF.exit70.sink.split, %bb.i, %bb.h, %bb.d, %bb.c, %bb.f, %bb.g, %bb.ab, %bb.aa, %bb.n, %list_join.exit.thread, %Py_DECREF.exit66, %Py_DECREF.exit74, %Py_DECREF.exit62, %bb.z
  %.4 = phi i32 [ 0, %bb.c ], [ -1, %Py_DECREF.exit74 ], [ -1, %Py_DECREF.exit62 ], [ -1, %Py_DECREF.exit66 ], [ 0, %bb.z ], [ 0, %bb.g ], [ -1, %list_join.exit.thread ], [ -1, %bb.n ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ -1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.d ], [ %.4.ph, %Py_DECREF.exit70.sink.split ]
  ret i32 %.4
}

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @treebuilder_handle_end(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %.not.i20 = icmp eq ptr %i.b, null
  br i1 %.not.i20, label %treebuilder_flush_data.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 3 uses
  %.not16.i = icmp eq ptr %i.f, null
  br i1 %.not16.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %i.d, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = getelementptr i8, ptr %i.d, i64 104
  %.val17.i = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.m = tail call fastcc i32 @treebuilder_extend_element_text_or_tail(ptr %.val17.i, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %i.i, ptr noundef %i.k)
  br label %treebuilder_flush_data.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 32
  %i.o = getelementptr i8, ptr %i.d, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %i.d, i64 104
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.r = tail call fastcc i32 @treebuilder_extend_element_text_or_tail(ptr %.val.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef %i.n, ptr noundef %i.p)
  br label %treebuilder_flush_data.exit

treebuilder_flush_data.exit:                      ; preds = %bb.c, %bb.d
  %.1.i = phi i32 [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp slt i32 %.1.i, 0
  br i1 %i.s, label %treebuilder_append_event.exit, label %treebuilder_flush_data.exit.thread

treebuilder_flush_data.exit.thread:               ; preds = %bb.a, %treebuilder_flush_data.exit
  %i.t = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !110
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %treebuilder_flush_data.exit.thread
  %i.w = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.45) #11
  br label %treebuilder_append_event.exit

bb.f:                                             ; preds = %treebuilder_flush_data.exit.thread
  %i.x = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98   ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.g
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !98
  %i.ae = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 4 uses
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !25
  %.not.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i21, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %_Py_NewRef.exit, %bb.h, %bb.i, %bb.j
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !110
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.t, align 8, !tbaa !110
  %i.al = getelementptr i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !101
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !112
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_Py_NewRef.exit22, label %bb.k

bb.k:                                             ; preds = %Py_XDECREF.exit
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %i.aq, align 8, !tbaa !26
  br label %_Py_NewRef.exit22

_Py_NewRef.exit22:                                ; preds = %Py_XDECREF.exit, %bb.k
  store ptr %i.aq, ptr %i.z, align 8, !tbaa !97
  %i.au = load i32, ptr %i.y, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %_Py_NewRef.exit22
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.y, align 8, !tbaa !26
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_Py_NewRef.exit22, %bb.l, %bb.m
  %i.ax = getelementptr i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !93 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ay, null
  br i1 %.not.i23, label %bb.u, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !98
  %i.ba = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.ay, ptr noundef %i.az) #11 ; 5 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %treebuilder_append_event.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %0, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  %i.be = tail call ptr @PyObject_CallOneArg(ptr noundef %i.bd, ptr noundef nonnull %i.ba) #11 ; 4 uses
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not.i14.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i14.i, label %bb.p, label %Py_DECREF.exit15.i

bb.p:                                             ; preds = %bb.o
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.ba, align 8, !tbaa !26
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %Py_DECREF.exit15.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #11
  br label %Py_DECREF.exit15.i

Py_DECREF.exit15.i:                               ; preds = %bb.q, %bb.p, %bb.o
  %i.bi = icmp eq ptr %i.be, null
  br i1 %i.bi, label %treebuilder_append_event.exit, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit15.i
  %i.bj = load i32, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %.not.i.i24 = icmp sgt i32 %i.bj, -1
  br i1 %.not.i.i24, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.be, align 8, !tbaa !26
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.be) #11
  br label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit, %bb.r, %bb.s, %bb.t
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !98  ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !26 ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, -1073741825
  br i1 %i.bo, label %treebuilder_append_event.exit, label %bb.v

end_hunk_0
