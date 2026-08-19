inline.NumInlined: 272
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@builtin_ord:bb.a
bb.n:                                             ; preds = %bb.m
  %i.z = and i32 %i.n, 64
  %.not.i.i20.i = icmp eq i32 %i.z, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i = load ptr, ptr %i.aa, align 8, !tbaa !17
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.o, %bb.n
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.n ], [ %.val4.i24.i, %bb.o ]
  %i.ab = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.u, %_PyUnicode_DATA.exit.i ], [ %i.y, %_PyUnicode_DATA.exit17.i ], [ %i.ab, %_PyUnicode_DATA.exit25.i ]
  %i.ac = zext i32 %.0.i to i64
  %i.ad = tail call ptr @PyLong_FromLong(i64 noundef %i.ac) #10
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.val24, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.p
  %i.ae = tail call i32 @PyType_IsSubtype(ptr noundef %.val24, ptr noundef nonnull @PyByteArray_Type) #10
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %bb.r, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.p, %PyObject_TypeCheck.exit
  %i.af = getelementptr i8, ptr %1, i64 16
  %.val30 = load i64, ptr %i.af, align 8, !tbaa !38 ; 2 uses
  %i.ag = icmp eq i64 %.val30, 1
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.ah = getelementptr i8, ptr %1, i64 40
  %.val31 = load ptr, ptr %i.ah, align 8, !tbaa !115
  %i.ai = load i8, ptr %.val31, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i64
  %i.ak = tail call ptr @PyLong_FromLong(i64 noundef %i.aj) #10
  br label %bb.t

bb.r:                                             ; preds = %PyObject_TypeCheck.exit
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.am = getelementptr i8, ptr %.val, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ao = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.168, ptr noundef %i.an) #10 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.e, %PyObject_TypeCheck.exit.thread, %bb.b
  %.0 = phi i64 [ %.val28, %bb.b ], [ %.val29, %bb.e ], [ %.val30, %PyObject_TypeCheck.exit.thread ]
  %i.ap = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.aq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ap, ptr noundef nonnull @.str.169, i64 noundef %.0) #10 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %PyUnicode_READ_CHAR.exit, %bb.c
  %.017 = phi ptr [ %i.i, %bb.c ], [ null, %bb.s ], [ %i.ad, %PyUnicode_READ_CHAR.exit ], [ %i.ak, %bb.q ], [ null, %bb.r ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_pow(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !38
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %2, -2
  %i.e = icmp eq i64 %i.d, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @builtin_pow._parser, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.f, label %.thread33

.thread33:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not30 = icmp eq i64 %i.j, 2
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread33
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %.thread33, %bb.d
  %.0 = phi ptr [ %i.o, %bb.d ], [ @_Py_NoneStruct, %.thread33 ]
  %i.p = call ptr @PyNumber_Power(ptr noundef %i.k, ptr noundef %i.m, ptr noundef %.0) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.025 = phi ptr [ %i.p, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @builtin_print(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %2, -1
  %i.c = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.c, %i.b
  br i1 %or.cond3, label %.thread65, label %.thread104

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !38  ; 3 uses
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @builtin_print._parser, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #10 ; 5 uses
  %.not52 = icmp eq ptr %i.e, null
  br i1 %.not52, label %builtin_print_impl.exit, label %bb.d

.thread104:                                       ; preds = %bb.b
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @builtin_print._parser, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #10
  %.not52105 = icmp eq ptr %i.f, null
  br i1 %.not52105, label %builtin_print_impl.exit, label %.thread65

bb.d:                                             ; preds = %bb.c
  %.not53 = icmp eq i64 %.val, 0
  br i1 %.not53, label %.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %.not54 = icmp eq ptr %i.g, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = add i64 %.val, -1                        ; 2 uses
  %.not55 = icmp eq i64 %i.h, 0
  br i1 %.not55, label %.thread65, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.039 = phi i64 [ %i.h, %bb.f ], [ %.val, %bb.e ] ; 2 uses
  %.037 = phi ptr [ %i.g, %bb.f ], [ @_Py_NoneStruct, %bb.e ] ; 4 uses
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %.not56 = icmp eq ptr %i.j, null
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = add i64 %.039, -1                        ; 2 uses
  %.not57 = icmp eq i64 %i.k, 0
  br i1 %.not57, label %.thread65, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.140 = phi i64 [ %i.k, %bb.h ], [ %.039, %bb.g ]
  %.035 = phi ptr [ %i.j, %bb.h ], [ @_Py_NoneStruct, %bb.g ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.e, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 3 uses
  %.not58 = icmp eq ptr %i.m, null
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = icmp ugt i64 %.140, 1
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.034 = phi ptr [ %i.m, %bb.j ], [ @_Py_NoneStruct, %bb.i ]
  %i.o = getelementptr i8, ptr %i.e, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = call i32 @PyObject_IsTrue(ptr noundef %i.p) #10 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %builtin_print_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi ptr [ %.034, %bb.k ], [ %i.m, %bb.j ] ; 5 uses
  %.0 = phi i32 [ %i.q, %bb.k ], [ 0, %bb.j ]     ; 3 uses
  %i.s = icmp eq ptr %.1, @_Py_NoneStruct
  br i1 %i.s, label %.thread65, label %bb.p

.thread65:                                        ; preds = %.thread104, %bb.b, %bb.d, %bb.f, %bb.h, %bb.l
  %.075 = phi i32 [ %.0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.thread104 ]
  %.13673 = phi ptr [ %.035, %bb.l ], [ %i.j, %bb.h ], [ @_Py_NoneStruct, %bb.f ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %.thread104 ]
  %.13871 = phi ptr [ %.037, %bb.l ], [ %.037, %bb.h ], [ %i.g, %bb.f ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %.thread104 ]
  %i.t = call ptr @PySys_GetAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896)) #10 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %builtin_print_impl.exit, label %bb.m

bb.m:                                             ; preds = %.thread65
  %i.v = icmp eq ptr %i.t, @_Py_NoneStruct
  br i1 %i.v, label %bb.n, label %Py_INCREF.exit.i

bb.n:                                             ; preds = %bb.m
  %i.w = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !17 ; 2 uses
  %.not.i70.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i70.i, label %bb.o, label %builtin_print_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr @_Py_NoneStruct, align 8, !tbaa !17
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.p:                                             ; preds = %bb.l
  %i.z = load i32, ptr %.1, align 8, !tbaa !17    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %Py_INCREF.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %.1, align 8, !tbaa !17
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.q, %bb.p, %bb.m
  %.074 = phi i32 [ %.075, %bb.m ], [ %.0, %bb.p ], [ %.0, %bb.q ]
  %.13672 = phi ptr [ %.13673, %bb.m ], [ %.035, %bb.p ], [ %.035, %bb.q ] ; 3 uses
  %.13870 = phi ptr [ %.13871, %bb.m ], [ %.037, %bb.p ], [ %.037, %bb.q ] ; 3 uses
  %.042.i = phi ptr [ %i.t, %bb.m ], [ %.1, %bb.p ], [ %.1, %bb.q ] ; 28 uses
  %i.ac = icmp eq ptr %.13870, @_Py_NoneStruct
  br i1 %i.ac, label %bb.u, label %bb.r

bb.r:                                             ; preds = %Py_INCREF.exit.i
  %i.ad = getelementptr i8, ptr %.13870, i64 8
  %.val81.i = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val81.i, i64 168
  %.val83.i = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.af = and i64 %.val83.i, 268435456
  %.not50.i = icmp eq i64 %i.af, 0
  br i1 %.not50.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.ah = getelementptr i8, ptr %.val81.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.177, ptr noundef %i.ai) #10 ; 0 uses
  %i.ak = load i32, ptr %.042.i, align 8, !tbaa !17 ; 2 uses
  %.not.i68.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i68.i, label %bb.t, label %builtin_print_impl.exit

bb.t:                                             ; preds = %bb.s
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.042.i, align 8, !tbaa !17
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.u:                                             ; preds = %bb.r, %Py_INCREF.exit.i
  %.044.i = phi ptr [ null, %Py_INCREF.exit.i ], [ %.13870, %bb.r ] ; 2 uses
  %i.an = icmp eq ptr %.13672, @_Py_NoneStruct
  br i1 %i.an, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr i8, ptr %.13672, i64 8
  %.val79.i = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val79.i, i64 168
  %.val82.i = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.aq = and i64 %.val82.i, 268435456
  %.not52.i = icmp eq i64 %i.aq, 0
  br i1 %.not52.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %.val79.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str.178, ptr noundef %i.at) #10 ; 0 uses
  %i.av = load i32, ptr %.042.i, align 8, !tbaa !17 ; 2 uses
  %.not.i66.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i66.i, label %bb.x, label %builtin_print_impl.exit

bb.x:                                             ; preds = %bb.w
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %.042.i, align 8, !tbaa !17
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.y:                                             ; preds = %bb.v, %bb.u
  %.043.i = phi ptr [ null, %bb.u ], [ %.13672, %bb.v ] ; 2 uses
  %i.ay = icmp sgt i64 %2, 0
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.az = icmp eq ptr %.044.i, null
  br i1 %i.az, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.z
  %i.ba = phi i64 [ %i.bd, %bb.z ], [ 0, %.lr.ph.i ]
  %.0401.us.i = phi i32 [ %i.bc, %bb.z ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp sgt i32 %.0401.us.i, 0
  br i1 %i.bb, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.ab
  %i.bc = add i32 %.0401.us.i, 1                  ; 2 uses
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp sgt i64 %2, %i.bd
  br i1 %i.be, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !117

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.bf = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.36, ptr noundef nonnull %.042.i) #10
  %.not55.us.i = icmp eq i32 %i.bf, 0
  br i1 %.not55.us.i, label %bb.ab, label %.split.us.i

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.us.i
  %i.bg = getelementptr [8 x i8], ptr %1, i64 %i.ba
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = call i32 @PyFile_WriteObject(ptr noundef %i.bh, ptr noundef nonnull %.042.i, i32 noundef 1) #10
  %.not56.us.i = icmp eq i32 %i.bi, 0
  br i1 %.not56.us.i, label %bb.z, label %.split3.us.i

bb.ac:                                            ; preds = %bb.af
  %i.bj = add i32 %.0401.i, 1                     ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = icmp sgt i64 %2, %i.bk
  br i1 %i.bl, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !117

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ac
  %i.bm = phi i64 [ %i.bk, %bb.ac ], [ 0, %.lr.ph.i ]
  %.0401.i = phi i32 [ %i.bj, %bb.ac ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bn = icmp sgt i32 %.0401.i, 0
  br i1 %i.bn, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.split.i
  %i.bo = call i32 @PyFile_WriteObject(ptr noundef nonnull %.044.i, ptr noundef nonnull %.042.i, i32 noundef 1) #10
  %.not55.i = icmp eq i32 %i.bo, 0
  br i1 %.not55.i, label %bb.af, label %.split.us.i

.split.us.i:                                      ; preds = %bb.ad, %bb.aa
  %i.bp = load i32, ptr %.042.i, align 8, !tbaa !17 ; 2 uses
  %.not.i64.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i64.i, label %bb.ae, label %builtin_print_impl.exit

bb.ae:                                            ; preds = %.split.us.i
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %.042.i, align 8, !tbaa !17
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.af:                                            ; preds = %bb.ad, %.lr.ph.split.i
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bu = call i32 @PyFile_WriteObject(ptr noundef %i.bt, ptr noundef nonnull %.042.i, i32 noundef 1) #10
  %.not56.i = icmp eq i32 %i.bu, 0
  br i1 %.not56.i, label %bb.ac, label %.split3.us.i

.split3.us.i:                                     ; preds = %bb.af, %bb.ab
  %i.bv = load i32, ptr %.042.i, align 8, !tbaa !17 ; 2 uses
  %.not.i62.i = icmp sgt i32 %i.bv, -1
  br i1 %.not.i62.i, label %bb.ag, label %builtin_print_impl.exit

bb.ag:                                            ; preds = %.split3.us.i
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %.042.i, align 8, !tbaa !17
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

._crit_edge.i:                                    ; preds = %bb.ac, %bb.z, %bb.y
  %i.by = icmp eq ptr %.043.i, null
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i
  %i.bz = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.179, ptr noundef nonnull %.042.i) #10
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i
  %i.ca = call i32 @PyFile_WriteObject(ptr noundef nonnull %.043.i, ptr noundef nonnull %.042.i, i32 noundef 1) #10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i32 [ %i.bz, %bb.ah ], [ %i.ca, %bb.ai ]
  %.not53.i = icmp eq i32 %.1.i, 0
  br i1 %.not53.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cb = load i32, ptr %.042.i, align 8, !tbaa !17 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i60.i, label %bb.al, label %builtin_print_impl.exit

bb.al:                                            ; preds = %bb.ak
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %.042.i, align 8, !tbaa !17
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.am:                                            ; preds = %bb.aj
  %.not54.i = icmp eq i32 %.074, 0
  br i1 %.not54.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = call i32 @_PyFile_Flush(ptr noundef nonnull %.042.i) #10
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cg = load i32, ptr %.042.i, align 8, !tbaa !17 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i58.i, label %bb.ap, label %builtin_print_impl.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %.042.i, align 8, !tbaa !17
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit
end_hunk_0
