inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@bytes_richcompare:bb.a
  br label %bb.ag

bb.z:                                             ; preds = %bb.v
  %i.be = icmp sgt i32 %.0, -1
  %_Py_TrueStruct._Py_FalseStruct79 = select i1 %i.be, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v
  unreachable

.thread:                                          ; preds = %bb.r, %bb.u
  switch i32 %2, label %bb.af [
    i32 5, label %bb.ae
    i32 1, label %bb.ad
    i32 0, label %bb.ab
    i32 4, label %bb.ac
  ]

bb.ab:                                            ; preds = %.thread
  %i.bf = icmp slt i64 %.val83, %.val
  %_Py_TrueStruct._Py_FalseStruct80 = select i1 %i.bf, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.ag

bb.ac:                                            ; preds = %.thread
  %_Py_TrueStruct._Py_FalseStruct81 = select i1 %i.ap, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %bb.ag

bb.ad:                                            ; preds = %.thread
  %_Py_FalseStruct._Py_TrueStruct = select i1 %i.ap, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %bb.ag

bb.ae:                                            ; preds = %.thread
  %.not75 = icmp slt i64 %.val83, %.val
  %_Py_FalseStruct._Py_TrueStruct82 = select i1 %.not75, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  unreachable

switch.lookup:                                    ; preds = %bb.l
  %i.bg = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bytes_richcompare, i64 %i.bg
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %switch.lookup, %bb.m, %bytes_compare_eq.exit, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.i, %bb.f, %bb.j
  %.2 = phi ptr [ null, %bb.i ], [ @_Py_NotImplementedStruct, %bb.j ], [ null, %bb.f ], [ null, %bb.m ], [ %switch.load, %switch.lookup ], [ %_Py_TrueStruct._Py_FalseStruct80, %bb.ab ], [ %i.am, %bytes_compare_eq.exit ], [ %_Py_TrueStruct._Py_FalseStruct79, %bb.z ], [ %_Py_TrueStruct._Py_FalseStruct77, %bb.x ], [ %_Py_TrueStruct._Py_FalseStruct78, %bb.y ], [ %_Py_FalseStruct._Py_TrueStruct82, %bb.ae ], [ %_Py_TrueStruct._Py_FalseStruct81, %bb.ac ], [ %_Py_FalseStruct._Py_TrueStruct, %bb.ad ], [ %_Py_TrueStruct._Py_FalseStruct, %bb.w ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_iter(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val9 = load i64, ptr %i.b, align 8, !tbaa !48
  %i.c = and i64 %.val9, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 3532) #19
  br label %_PyObject_GC_TRACK.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @PyBytesIter_Type) #19 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_PyObject_GC_TRACK.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.d, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !114
  %i.g = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !14
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.j = getelementptr i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr i8, ptr %i.d, i64 -16      ; 2 uses
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 7408
  %i.o = getelementptr i8, ptr %i.m, i64 7416     ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !117  ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !119
  %i.t = and i64 %i.s, 3
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.q, align 8, !tbaa !119
  %i.v = getelementptr i8, ptr %i.d, i64 -8       ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !117
  %i.x = and i64 %i.w, 3
  %i.y = or i64 %i.x, %i.p
  store i64 %i.y, ptr %i.v, align 8, !tbaa !117
  %i.z = getelementptr i8, ptr %i.m, i64 7672
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !120
  %i.ab = xor i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !119
  store i64 %i.r, ptr %i.o, align 8, !tbaa !117
  %i.af = getelementptr i8, ptr %i.m, i64 7428    ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !124
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !124
  %i.ai = getelementptr i8, ptr %i.m, i64 7656    ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !125
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !125
  %i.al = getelementptr i8, ptr %i.m, i64 7424
  %i.am = load i32, ptr %i.al, align 8, !tbaa !126
  %i.an = icmp sgt i32 %i.ah, %i.am
  br i1 %i.an, label %bb.f, label %_PyObject_GC_TRACK.exit

bb.f:                                             ; preds = %_Py_NewRef.exit
  %i.ao = getelementptr i8, ptr %i.m, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.ao) #19
  br label %_PyObject_GC_TRACK.exit

_PyObject_GC_TRACK.exit:                          ; preds = %bb.f, %_Py_NewRef.exit, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.d, %_Py_NewRef.exit ], [ %i.d, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_alloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyType_GenericAlloc(ptr noundef %0, i64 noundef %1) #19 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 24
  store i64 -1, ptr %i.c, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !20  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val67 = load i64, ptr %i.e, align 8, !tbaa !127
  %i.f = add i64 %.val67, %.val
  %i.g = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %.val, 4
  %i.i = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.j = icmp ne ptr %i.i, null
  %or.cond7 = and i1 %i.j, %i.h
  br i1 %or.cond7, label %.thread74, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.k = phi ptr [ %i.g, %.thread ], [ %i.i, %bb.b ]
  %i.l = phi i64 [ %i.f, %.thread ], [ %.val, %bb.b ]
  %i.m = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.k, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @bytes_new._parser, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not58 = icmp eq ptr %i.m, null
  br i1 %.not58, label %bytes_new_impl.exit, label %.thread74

.thread74:                                        ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.o = phi i64 [ %i.l, %bb.c ], [ %.val, %bb.b ] ; 3 uses
  %.not59 = icmp eq i64 %i.o, 0
  br i1 %.not59, label %.thread80, label %bb.d

bb.d:                                             ; preds = %.thread74
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !11   ; 10 uses
  %.not60 = icmp eq ptr %i.p, null                ; 2 uses
  br i1 %.not60, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.o, -1                         ; 2 uses
  %.not61 = icmp eq i64 %i.q, 0
  br i1 %.not61, label %.thread100, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.046 = phi i64 [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 4 uses
  %.not62 = icmp eq ptr %i.s, null
  br i1 %.not62, label %.thread78, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val69 = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr i8, ptr %.val69, i64 168
  %.val71 = load i64, ptr %i.u, align 8, !tbaa !48
  %i.v = and i64 %.val71, 268435456
  %.not63 = icmp eq i64 %i.v, 0
  br i1 %.not63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.s) #19
  br label %bytes_new_impl.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.w = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.s, ptr noundef nonnull %i.b) #19 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread76, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #20
  %i.z = load i64, ptr %i.b, align 8, !tbaa !43
  %.not64 = icmp eq i64 %i.y, %i.z
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.149) #19
  br label %.thread76

bb.l:                                             ; preds = %bb.j
  %i.ab = icmp ugt i64 %.046, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.ab, label %.thread78, label %bb.q

.thread76:                                        ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bytes_new_impl.exit

.thread78:                                        ; preds = %bb.l, %bb.f
  %.043 = phi ptr [ null, %bb.f ], [ %i.w, %bb.l ]
  %i.ac = getelementptr i8, ptr %i.n, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val68 = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr i8, ptr %.val68, i64 168
  %.val70 = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ag = and i64 %.val70, 268435456
  %.not65 = icmp eq i64 %i.ag, 0
  br i1 %.not65, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread78
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.ad) #19
  br label %bytes_new_impl.exit

bb.n:                                             ; preds = %.thread78
  %i.ah = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.c) #19 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bytes_new_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #20
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !43
  %.not66 = icmp eq i64 %i.aj, %i.ak
  br i1 %.not66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.149) #19
  br label %bytes_new_impl.exit

bb.q:                                             ; preds = %bb.l, %bb.o
  %.1 = phi ptr [ %.043, %bb.o ], [ %i.w, %bb.l ] ; 3 uses
  %.042 = phi ptr [ %i.ah, %bb.o ], [ null, %bb.l ] ; 3 uses
  br i1 %.not60, label %.thread80, label %bb.t

.thread80:                                        ; preds = %.thread74, %bb.q
  %.04285 = phi ptr [ %.042, %bb.q ], [ null, %.thread74 ]
  %.184 = phi ptr [ %.1, %bb.q ], [ null, %.thread74 ]
  %i.am = icmp ne ptr %.184, null                 ; 2 uses
  %i.an = icmp ne ptr %.04285, null
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread80
  %i.ao = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ap = select i1 %i.am, ptr @.str.166, ptr @.str.167
  call void @PyErr_SetString(ptr noundef %i.ao, ptr noundef nonnull %i.ap) #19, !inline_history !131
  br label %bytes_new_impl.exit

bb.s:                                             ; preds = %.thread80
  %i.aq = call ptr @Py_GetConstant(i32 noundef 8) #19, !inline_history !131
  br label %bb.ar

bb.t:                                             ; preds = %bb.q
  %.not.i = icmp eq ptr %.1, null
  br i1 %.not.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr i8, ptr %i.p, i64 8
  %.val63.i = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.as = getelementptr i8, ptr %.val63.i, i64 168
  %.val67.i = load i64, ptr %i.as, align 8, !tbaa !48
  %i.at = and i64 %.val67.i, 268435456
  %.not54.i = icmp eq i64 %i.at, 0
  br i1 %.not54.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.au = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.166) #19, !inline_history !131
  br label %bytes_new_impl.exit

bb.w:                                             ; preds = %bb.u
  %i.av = call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %i.p, ptr noundef nonnull %.1, ptr noundef %.042) #19, !inline_history !131
  br label %bb.ar

bb.x:                                             ; preds = %bb.t
  %.not45.i = icmp eq ptr %.042, null
  br i1 %.not45.i, label %.thread100, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.p, i64 8
  %.val62.i = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr i8, ptr %.val62.i, i64 168
  %.val66.i = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.az = and i64 %.val66.i, 268435456
  %.not53.i = icmp eq i64 %i.az, 0
  %i.ba = select i1 %.not53.i, ptr @.str.167, ptr @.str.168
  call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull %i.ba) #19, !inline_history !131
  br label %bytes_new_impl.exit

.thread100:                                       ; preds = %bb.e, %bb.x
  %i.bb = call ptr @_PyObject_LookupSpecial(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 63288)) #19, !inline_history !131 ; 9 uses
  %.not46.i = icmp eq ptr %i.bb, null
  br i1 %.not46.i, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %.thread100
  %i.bc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bf = getelementptr i8, ptr %.val.i.i.i.i, i64 168
  %.val6.i.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !48
  %i.bg = and i64 %.val6.i.i.i.i, 2048
  %.not.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i:          ; preds = %bb.z
  %i.bh = getelementptr i8, ptr %.val.i.i.i.i, i64 56
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !69
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi
  %.0.copyload.i.i.i.i = load ptr, ptr %i.bj, align 1 ; 2 uses
  %i.bk = icmp eq ptr %.0.copyload.i.i.i.i, null
  br i1 %i.bk, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %bb.aa

_PyVectorcall_FunctionInline.exit.thread.i.i.i:   ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i, %bb.z
  %i.bl = call ptr @_PyObject_MakeTpCall(ptr noundef %i.bd, ptr noundef nonnull %i.bb, ptr noundef null, i64 noundef 0, ptr noundef null) #19, !inline_history !131
  br label %_PyObject_CallNoArgs.exit.i

bb.aa:                                            ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i
  %i.bm = call ptr %.0.copyload.i.i.i.i(ptr noundef nonnull %i.bb, ptr noundef null, i64 noundef 0, ptr noundef null) #19, !inline_history !132
  %i.bn = call ptr @_Py_CheckFunctionResult(ptr noundef %i.bd, ptr noundef nonnull %i.bb, ptr noundef %i.bm, ptr noundef null) #19, !inline_history !131
  br label %_PyObject_CallNoArgs.exit.i

_PyObject_CallNoArgs.exit.i:                      ; preds = %bb.aa, %_PyVectorcall_FunctionInline.exit.thread.i.i.i
  %.0.i.i.i = phi ptr [ %i.bl, %_PyVectorcall_FunctionInline.exit.thread.i.i.i ], [ %i.bn, %bb.aa ] ; 7 uses
  %i.bo = load i32, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %.not.i57.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i57.i, label %bb.ab, label %Py_DECREF.exit58.i

bb.ab:                                            ; preds = %_PyObject_CallNoArgs.exit.i
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bb, align 8, !tbaa !14
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ac, label %Py_DECREF.exit58.i

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #19, !inline_history !131
  br label %Py_DECREF.exit58.i

Py_DECREF.exit58.i:                               ; preds = %bb.ac, %bb.ab, %_PyObject_CallNoArgs.exit.i
  %i.br = icmp eq ptr %.0.i.i.i, null
  br i1 %i.br, label %bytes_new_impl.exit, label %bb.ad

bb.ad:                                            ; preds = %Py_DECREF.exit58.i
  %i.bs = getelementptr i8, ptr %.0.i.i.i, i64 8
  %.val61.i = load ptr, ptr %i.bs, align 8, !tbaa !16
  %i.bt = getelementptr i8, ptr %.val61.i, i64 168
  %.val65.i = load i64, ptr %i.bt, align 8, !tbaa !48
  %i.bu = and i64 %.val65.i, 134217728
  %.not52.i = icmp eq i64 %i.bu, 0
  br i1 %.not52.i, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.bw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bv, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.p, ptr noundef nonnull %.0.i.i.i) #19, !inline_history !131 ; 0 uses
  %i.bx = load i32, ptr %.0.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i55.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i55.i, label %bb.af, label %bytes_new_impl.exit

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %.0.i.i.i, align 8, !tbaa !14
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ag, label %bytes_new_impl.exit

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i.i) #19, !inline_history !131
  br label %bytes_new_impl.exit

bb.ah:                                            ; preds = %.thread100
  %i.ca = call ptr @PyErr_Occurred() #19, !inline_history !131
  %.not47.i = icmp eq ptr %i.ca, null
  br i1 %.not47.i, label %bb.ai, label %bytes_new_impl.exit

end_hunk_0
