Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bltinmodule?download=true
inline.NumInlined: 272
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@builtin_compile:bb.a
  %i.cn = call ptr @_PyAST_Compile(ptr noundef nonnull %i.cd, ptr noundef %i.ba, ptr noundef nonnull %4, i32 noundef %.052106, ptr noundef nonnull %i.cb, ptr noundef %.072.i) #10
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @_PyArena_Free(ptr noundef nonnull %i.cb) #10
  br label %builtin_compile_impl.exit

bb.bb:                                            ; preds = %.thread4.i, %bb.ax
  %.369.i = phi ptr [ %i.cl, %bb.ax ], [ %i.cn, %.thread4.i ]
  call void @_PyArena_Free(ptr noundef nonnull %i.cb) #10
  br label %builtin_compile_impl.exit

bb.bc:                                            ; preds = %bb.ap
  %i.co = call ptr @_Py_SourceAsString(ptr noundef %i.o, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.134, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %builtin_compile_impl.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cq = zext nneg i32 %.070.i to i64
  %i.cr = getelementptr [4 x i8], ptr @__const.builtin_compile_impl.start, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !10
  %i.ct = call ptr @_Py_CompileStringObjectWithModule(ptr noundef nonnull %i.co, ptr noundef %i.ba, i32 noundef %i.cs, ptr noundef nonnull %4, i32 noundef %.052106, ptr noundef %.072.i) #10 ; 4 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !306 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i, label %builtin_compile_impl.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i.i.i, label %bb.bf, label %builtin_compile_impl.exit

bb.bf:                                            ; preds = %bb.be
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !293
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.bg, label %builtin_compile_impl.exit

bb.bg:                                            ; preds = %bb.bf
  call void @_Py_Dealloc(ptr noundef nonnull %i.cu) #10
  br label %builtin_compile_impl.exit

builtin_compile_impl.exit:                        ; preds = %bb.aa, %bb.ac, %bb.af, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.au, %bb.aw, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.071.i = phi ptr [ %.369.i, %bb.bb ], [ %i.ct, %bb.bg ], [ %i.ct, %bb.bd ], [ %i.ct, %bb.be ], [ %i.ct, %bb.bf ], [ null, %bb.aa ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.bc ], [ null, %bb.an ], [ null, %bb.af ], [ null, %bb.ac ], [ null, %bb.ba ], [ null, %bb.aq ], [ null, %bb.au ], [ null, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.x, %bb.t, %bb.p, %bb.m, %bb.g, %.thread, %bb.d, %builtin_compile_impl.exit, %bb.i, %bb.f
  %.059 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.x ], [ %.071.i, %builtin_compile_impl.exit ], [ null, %bb.f ], [ null, %.thread ], [ null, %bb.d ]
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !306 ; 4 uses
  %.not.i95 = icmp eq ptr %i.cy, null
  br i1 %.not.i95, label %Py_XDECREF.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !293 ; 2 uses
  %.not.i.i96 = icmp sgt i32 %i.cz, -1
  br i1 %.not.i.i96, label %bb.bj, label %Py_XDECREF.exit

bb.bj:                                            ; preds = %bb.bi
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !293
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.bk, label %Py_XDECREF.exit

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret ptr %.059
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_delattr(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !412 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.64, i64 noundef %2, i64 noundef 2, i64 noundef 2) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = tail call i32 @PyObject_DelAttr(ptr noundef %i.b, ptr noundef %i.d) #10
  %i.f = icmp slt i32 %i.e, 0
  %._Py_NoneStruct.i = select i1 %i.f, ptr null, ptr @_Py_NoneStruct
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %._Py_NoneStruct.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_dir(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !413 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !306
  %i.b = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.65, i64 noundef 0, i64 noundef 1, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.d = call ptr @PyObject_Dir(ptr noundef %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_divmod(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !414 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.66, i64 noundef %2, i64 noundef 2, i64 noundef 2) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = tail call ptr @PyNumber_Divmod(ptr noundef %i.b, ptr noundef %i.d) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_eval(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !416 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.PyCompilerFlags, align 8    ; 6 uses
  %i.b = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread77

.thread77:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !313
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %.val
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %2, -1                           ; 3 uses
  %i.g = icmp ult i64 %i.f, 3
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.thread77, %bb.b
  %i.j = phi i64 [ %i.e, %.thread77 ], [ %i.f, %bb.b ]
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @builtin_eval._parser, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not34 = icmp eq ptr %i.k, null
  br i1 %.not34, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.k, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !306  ; 5 uses
  %.not35 = icmp eq i64 %i.l, 0
  br i1 %.not35, label %.thread39, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !306  ; 3 uses
  %.not36 = icmp eq ptr %i.p, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq i64 %i.l, 1
  br i1 %.not37, label %.thread39, label %bb.f

.thread39:                                        ; preds = %bb.e, %.thread
  %.1.ph = phi ptr [ @_Py_NoneStruct, %.thread ], [ %i.p, %bb.e ]
  %i.q = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.e
  %.027 = phi ptr [ %i.p, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306  ; 4 uses
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !312  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq ptr %i.t, @_Py_NoneStruct
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @PyMapping_Check(ptr noundef %i.t) #10
  %.not54.i = icmp eq i32 %i.w, 0
  br i1 %.not54.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.136) #10
  br label %builtin_eval_impl.exit

bb.i:                                             ; preds = %.thread39, %bb.g, %bb.f
  %.not.i45 = phi i1 [ true, %.thread39 ], [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.r, %.thread39 ], [ %i.v, %bb.g ], [ %i.v, %bb.f ] ; 3 uses
  %.044 = phi ptr [ @_Py_NoneStruct, %.thread39 ], [ %i.t, %bb.g ], [ %i.t, %bb.f ] ; 3 uses
  %.143 = phi ptr [ %.1.ph, %.thread39 ], [ %.027, %bb.g ], [ %.027, %bb.f ] ; 6 uses
  %.not55.i = icmp eq ptr %.143, @_Py_NoneStruct
  br i1 %.not55.i, label %.critedge64.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %.143, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !295 ; 3 uses
  %i.aa = getelementptr i8, ptr %.val.i, i64 168
  %.val68.i = load i64, ptr %i.aa, align 8, !tbaa !316
  %i.ab = and i64 %.val68.i, 536870912
  %.not56.i = icmp ne i64 %i.ab, 0
  %.not.i73.i = icmp eq ptr %.val.i, @PyFrozenDict_Type
  %or.cond.i = or i1 %.not.i73.i, %.not56.i
  br i1 %or.cond.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.j
  %i.ac = call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFrozenDict_Type) #10
  %.not4.i = icmp eq i32 %i.ac, 0
  br i1 %.not4.i, label %bb.k, label %PyObject_TypeCheck.exit.thread.i

bb.k:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.ad = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  %i.ae = call i32 @PyMapping_Check(ptr noundef %.143) #10
  %.not58.i = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not58.i, ptr @.str.138, ptr @.str.137
  call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull %i.af) #10
  br label %builtin_eval_impl.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.j
  %i.ag = load i32, ptr %.143, align 8, !tbaa !293 ; 3 uses
  %i.ah = icmp ugt i32 %i.ag, -1073741825
  br i1 %i.ah, label %Py_INCREF.exit67.i, label %Py_INCREF.exit67.sink.split.i

.critedge64.i:                                    ; preds = %bb.i
  %i.ai = call ptr @_PyEval_GetFrame() #10
  %.not59.i = icmp eq ptr %i.ai, null
  br i1 %.not59.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge64.i
  %i.aj = call ptr @PyEval_GetGlobals() #10       ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !293 ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %Py_INCREF.exit67.i.thread, label %Py_INCREF.exit67.sink.split.i

bb.m:                                             ; preds = %.critedge64.i
  %i.am = call ptr @_PyEval_GetGlobalsFromRunningMain(ptr noundef %i.y) #10 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.y, i64 128
  %.val69.i = load ptr, ptr %i.ao, align 8, !tbaa !334 ; 2 uses
  %i.ap = icmp eq ptr %.val69.i, null
  br i1 %i.ap, label %_PyErr_Occurred.exit.thread.i, label %_PyErr_Occurred.exit.i

_PyErr_Occurred.exit.i:                           ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %.val69.i, i64 8
  %.val.i.i = load ptr, ptr %i.aq, align 8, !tbaa !295
  %.not60.i = icmp eq ptr %.val.i.i, null
  br i1 %.not60.i, label %_PyErr_Occurred.exit.thread.i, label %builtin_eval_impl.exit

_PyErr_Occurred.exit.thread.i:                    ; preds = %_PyErr_Occurred.exit.i, %bb.n
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.139) #10
  br label %builtin_eval_impl.exit

bb.o:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.am, align 8, !tbaa !293 ; 3 uses
  %i.at = icmp ugt i32 %i.as, -1073741825
  br i1 %i.at, label %Py_INCREF.exit67.i, label %Py_INCREF.exit67.sink.split.i

Py_INCREF.exit67.sink.split.i:                    ; preds = %bb.o, %bb.l, %PyObject_TypeCheck.exit.thread.i
  %.sink25.i = phi i32 [ %i.ak, %bb.l ], [ %i.ag, %PyObject_TypeCheck.exit.thread.i ], [ %i.as, %bb.o ]
  %.sink24.i = phi ptr [ %i.aj, %bb.l ], [ %.143, %PyObject_TypeCheck.exit.thread.i ], [ %i.am, %bb.o ] ; 2 uses
  %.not61.ph.i = phi i1 [ false, %bb.l ], [ true, %PyObject_TypeCheck.exit.thread.i ], [ true, %bb.o ]
  %i.au = add nuw i32 %.sink25.i, 1               ; 2 uses
  store i32 %i.au, ptr %.sink24.i, align 8, !tbaa !293
  br label %Py_INCREF.exit67.i

Py_INCREF.exit67.i:                               ; preds = %Py_INCREF.exit67.sink.split.i, %bb.o, %PyObject_TypeCheck.exit.thread.i
  %i.av = phi i32 [ %i.au, %Py_INCREF.exit67.sink.split.i ], [ %i.as, %bb.o ], [ %i.ag, %PyObject_TypeCheck.exit.thread.i ] ; 2 uses
  %.043.i = phi ptr [ %.sink24.i, %Py_INCREF.exit67.sink.split.i ], [ %i.am, %bb.o ], [ %.143, %PyObject_TypeCheck.exit.thread.i ] ; 6 uses
  %.not61.i = phi i1 [ %.not61.ph.i, %Py_INCREF.exit67.sink.split.i ], [ true, %bb.o ], [ true, %PyObject_TypeCheck.exit.thread.i ]
  br i1 %.not.i45, label %bb.q, label %bb.p

Py_INCREF.exit67.i.thread:                        ; preds = %bb.l
  br i1 %.not.i45, label %.thread54, label %bb.p

bb.p:                                             ; preds = %Py_INCREF.exit67.i.thread, %Py_INCREF.exit67.i
  %.043.i50 = phi ptr [ %i.aj, %Py_INCREF.exit67.i.thread ], [ %.043.i, %Py_INCREF.exit67.i ] ; 2 uses
  %i.aw = load i32, ptr %.044, align 8, !tbaa !293 ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, -1073741825
  br i1 %i.ax, label %Py_INCREF.exit.i, label %Py_INCREF.exit.sink.split.i

bb.q:                                             ; preds = %Py_INCREF.exit67.i
  br i1 %.not61.i, label %bb.u, label %.thread54

.thread54:                                        ; preds = %Py_INCREF.exit67.i.thread, %bb.q
  %.043.i5157 = phi ptr [ %.043.i, %bb.q ], [ %i.aj, %Py_INCREF.exit67.i.thread ] ; 4 uses
  %i.ay = call ptr @_PyEval_GetFrameLocals() #10  ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.r, label %Py_INCREF.exit.i

bb.r:                                             ; preds = %.thread54
  %i.ba = load i32, ptr %.043.i5157, align 8, !tbaa !293 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i.i, label %bb.s, label %builtin_eval_impl.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.043.i5157, align 8, !tbaa !293
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.t, label %builtin_eval_impl.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %.043.i5157) #10
  br label %builtin_eval_impl.exit

bb.u:                                             ; preds = %bb.q
  %i.bd = icmp ugt i32 %i.av, -1073741825
  br i1 %i.bd, label %Py_INCREF.exit.i, label %Py_INCREF.exit.sink.split.i

Py_INCREF.exit.sink.split.i:                      ; preds = %bb.u, %bb.p
  %.043.i48 = phi ptr [ %.043.i50, %bb.p ], [ %.043.i, %bb.u ]
  %.sink26.i = phi i32 [ %i.aw, %bb.p ], [ %i.av, %bb.u ]
  %.043.sink.i = phi ptr [ %.044, %bb.p ], [ %.043.i, %bb.u ] ; 2 uses
  %i.be = add nuw i32 %.sink26.i, 1
  store i32 %i.be, ptr %.043.sink.i, align 8, !tbaa !293
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %Py_INCREF.exit.sink.split.i, %bb.u, %.thread54, %bb.p
  %.043.i49 = phi ptr [ %.043.i, %bb.u ], [ %.043.i5157, %.thread54 ], [ %.043.i50, %bb.p ], [ %.043.i48, %Py_INCREF.exit.sink.split.i ] ; 6 uses
  %.042.i = phi ptr [ %.043.i, %bb.u ], [ %i.ay, %.thread54 ], [ %.044, %bb.p ], [ %.043.sink.i, %Py_INCREF.exit.sink.split.i ] ; 5 uses
  %i.bf = call i32 @_PyEval_EnsureBuiltins(ptr noundef %i.y, ptr noundef nonnull %.043.i49, ptr noundef null) #10
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.af, label %bb.v

bb.v:                                             ; preds = %Py_INCREF.exit.i
  %i.bh = getelementptr i8, ptr %i.n, i64 8
  %.val70.i = load ptr, ptr %i.bh, align 8, !tbaa !295
  %.not5.i = icmp eq ptr %.val70.i, @PyCode_Type
  br i1 %.not5.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bi = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.n) #10
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr i8, ptr %i.n, i64 88
  %.val72.i = load i32, ptr %i.bk, align 8, !tbaa !337
  %i.bl = icmp sgt i32 %.val72.i, 0
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  call void @PyErr_SetString(ptr noundef %i.bm, ptr noundef nonnull @.str.140) #10
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.bn = call ptr @PyEval_EvalCode(ptr noundef nonnull %i.n, ptr noundef nonnull %.043.i49, ptr noundef nonnull %.042.i) #10
  br label %bb.af

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 64424509696, ptr %4, align 8
  %i.bo = call ptr @_Py_SourceAsString(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.141, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %Py_XDECREF.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa, %.critedge.i
  %.040.i = phi ptr [ %i.br, %.critedge.i ], [ %i.bo, %bb.aa ] ; 3 uses
  %i.bq = load i8, ptr %.040.i, align 1, !tbaa !293
  switch i8 %i.bq, label %bb.ab [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i
  %i.br = getelementptr i8, ptr %.040.i, i64 1
  br label %.preheader.i, !llvm.loop !415

bb.ab:                                            ; preds = %.preheader.i
  %i.bs = call i32 @PyEval_MergeCompilerFlags(ptr noundef nonnull %4) #10 ; 0 uses
  %i.bt = call ptr @PyRun_StringFlags(ptr noundef nonnull %.040.i, i32 noundef 258, ptr noundef nonnull %.043.i49, ptr noundef nonnull %.042.i, ptr noundef nonnull %4) #10 ; 4 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !306 ; 4 uses
  %.not.i74.i = icmp eq ptr %i.bu, null
  br i1 %.not.i74.i, label %Py_XDECREF.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.bv, -1
  br i1 %.not.i.i.i, label %bb.ad, label %Py_XDECREF.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !293
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %Py_XDECREF.exit.i

end_hunk_0
begin_hunk_1_@builtin_getattr:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_globals(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !421 {
bb.a:
  %i.a = tail call ptr @_PyEval_GetFrame() #10
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyEval_GetGlobals() #10   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !293  ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %builtin_globals_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !293
  br label %builtin_globals_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.h = tail call ptr @_PyEval_GetGlobalsFromRunningMain(ptr noundef %i.g) #10 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.g, i64 128
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !334 ; 2 uses
  %i.k = icmp eq ptr %.val.i, null
  br i1 %i.k, label %builtin_globals_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !295
  %i.m = icmp eq ptr %.val.i.i, null
  %i.n = select i1 %i.m, ptr @_Py_NoneStruct, ptr null
  br label %builtin_globals_impl.exit

bb.g:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.h, align 8, !tbaa !293  ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %builtin_globals_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.h, align 8, !tbaa !293
  br label %builtin_globals_impl.exit

builtin_globals_impl.exit:                        ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.1.i = phi ptr [ %i.b, %bb.c ], [ %i.h, %bb.h ], [ %i.b, %bb.b ], [ %i.h, %bb.g ], [ %i.n, %bb.f ], [ @_Py_NoneStruct, %bb.e ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @builtin_hasattr(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !422 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.72, i64 noundef %2, i64 noundef 2, i64 noundef 2) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !306
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.f = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.a) #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %builtin_hasattr_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !306  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %builtin_hasattr_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 8, !tbaa !293  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.f, label %builtin_hasattr_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !293
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %builtin_hasattr_impl.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #10
  br label %builtin_hasattr_impl.exit

builtin_hasattr_impl.exit:                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ @_Py_FalseStruct, %bb.d ], [ null, %bb.c ], [ @_Py_TrueStruct, %bb.e ], [ @_Py_TrueStruct, %bb.f ], [ @_Py_TrueStruct, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %builtin_hasattr_impl.exit
  %.0 = phi ptr [ %.0.i, %builtin_hasattr_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_hash(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !423 {
bb.a:
  %i.a = tail call i64 @PyObject_Hash(ptr noundef %1) #10 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_hex(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !424 {
bb.a:
  %i.a = tail call ptr @PyNumber_ToBase(ptr noundef %1, i32 noundef 16) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_id(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !425 {
bb.a:
  %i.a = tail call ptr @PyLong_FromVoidPtr(ptr noundef %1) #10 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %builtin_id_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.a) #10
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %builtin_id_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.d, label %builtin_id_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !293
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %builtin_id_impl.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #10
  br label %builtin_id_impl.exit

builtin_id_impl.exit:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_input(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !426 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.76, i64 noundef %2, i64 noundef 0, i64 noundef 1) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %builtin_input_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = icmp slt i64 %2, 1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !306
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ]  ; 4 uses
  %i.f = tail call ptr @PySys_GetAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100848)) #10 ; 15 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %builtin_input_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %i.f, @_Py_NoneStruct
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !306
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.151) #10
  br label %Py_DECREF.exit187.thread10.i

bb.h:                                             ; preds = %bb.f
  %i.j = tail call ptr @PySys_GetAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896)) #10 ; 23 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit187.thread10.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !306
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.152) #10
  br label %Py_DECREF.exit187.thread10.i

bb.k:                                             ; preds = %bb.i
  %i.n = tail call ptr @PySys_GetAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100800)) #10 ; 16 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Py_DECREF.exit187.thread10.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = icmp eq ptr %i.n, @_Py_NoneStruct
  br i1 %i.p, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !306
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.153) #10
  br label %Py_DECREF.exit187.thread10.i

bb.n:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %.0, null                 ; 3 uses
  %i.r = select i1 %.not.i, ptr @_Py_NoneStruct, ptr %.0
  %i.s = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.r) #10
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit187.thread10.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = tail call i32 @_PyFile_Flush(ptr noundef nonnull %i.n) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @PyErr_Clear() #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !tbaa !306
  %i.w = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83992), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge181.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = call i64 @PyLong_AsLong(ptr noundef nonnull %i.w) #10 ; 3 uses
  %i.z = load i32, ptr %i.w, align 8, !tbaa !293  ; 2 uses
  %.not.i204.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i204.i, label %bb.s, label %Py_DECREF.exit205.i

bb.s:                                             ; preds = %bb.r
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.w, align 8, !tbaa !293
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.t, label %Py_DECREF.exit205.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.w) #10
  br label %Py_DECREF.exit205.i

Py_DECREF.exit205.i:                              ; preds = %bb.t, %bb.s, %bb.r
  %i.ac = icmp slt i64 %i.y, 0
  br i1 %i.ac, label %bb.u, label %bb.v

bb.u:                                             ; preds = %Py_DECREF.exit205.i
  %i.ad = call ptr @PyErr_Occurred() #10
  %.not165.i = icmp eq ptr %i.ad, null
  br i1 %.not165.i, label %bb.v, label %Py_DECREF.exit187.thread10.i

bb.v:                                             ; preds = %bb.u, %Py_DECREF.exit205.i
  %i.ae = load ptr, ptr @stdin, align 8, !tbaa !428
  %i.af = call i32 @fileno(ptr noundef %i.ae) #10
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i64 %i.y, %i.ag
  br i1 %i.ah, label %bb.w, label %.critedge181.i

bb.w:                                             ; preds = %bb.v
  %i.ai = trunc nsw i64 %i.y to i32
  %i.aj = call i32 @isatty(i32 noundef %i.ai) #10
  %.not167.i = icmp eq i32 %i.aj, 0
  br i1 %.not167.i, label %.critedge181.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !tbaa !306
  %i.ak = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83992), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.critedge181.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = call i64 @PyLong_AsLong(ptr noundef nonnull %i.ak) #10 ; 3 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !293 ; 2 uses
  %.not.i202.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i202.i, label %bb.z, label %Py_DECREF.exit203.i

bb.z:                                             ; preds = %bb.y
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ak, align 8, !tbaa !293
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.aa, label %Py_DECREF.exit203.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #10
  br label %Py_DECREF.exit203.i

Py_DECREF.exit203.i:                              ; preds = %bb.aa, %bb.z, %bb.y
  %i.aq = icmp slt i64 %i.am, 0
  br i1 %i.aq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %Py_DECREF.exit203.i
  %i.ar = call ptr @PyErr_Occurred() #10
  %.not168.i = icmp eq ptr %i.ar, null
  br i1 %.not168.i, label %bb.ac, label %Py_DECREF.exit187.thread10.i

bb.ac:                                            ; preds = %bb.ab, %Py_DECREF.exit203.i
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !428
  %i.at = call i32 @fileno(ptr noundef %i.as) #10
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i64 %i.am, %i.au
  br i1 %i.av, label %.critedge.i, label %.critedge181.i

.critedge.i:                                      ; preds = %bb.ac
  %i.aw = trunc nsw i64 %i.am to i32
  %i.ax = call i32 @isatty(i32 noundef %i.aw) #10
  %.not170.i = icmp eq i32 %i.ax, 0
  br i1 %.not170.i, label %.critedge181.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i
  %i.ay = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 82024)) #10 ; 10 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %Py_DECREF.exit187.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 82448)) #10 ; 15 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %Py_DECREF.exit187.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  %.val220.i = load ptr, ptr %i.bc, align 8, !tbaa !295
  %i.bd = getelementptr i8, ptr %.val220.i, i64 168
  %.val224.i = load i64, ptr %i.bd, align 8, !tbaa !316
  %i.be = and i64 %.val224.i, 268435456
  %.not171.i = icmp eq i64 %i.be, 0
  br i1 %.not171.i, label %Py_DECREF.exit187.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = getelementptr i8, ptr %i.ba, i64 8
  %.val219.i = load ptr, ptr %i.bf, align 8, !tbaa !295
  %i.bg = getelementptr i8, ptr %.val219.i, i64 168
  %.val223.i = load i64, ptr %i.bg, align 8, !tbaa !316
  %i.bh = and i64 %.val223.i, 268435456
  %.not172.i = icmp eq i64 %i.bh, 0
  br i1 %.not172.i, label %Py_DECREF.exit187.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.ay) #10 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.ba) #10 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bm = call i32 @_PyFile_Flush(ptr noundef nonnull %i.j) #10
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @PyErr_Clear() #10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %.not.i, label %bb.bc, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bo = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 82024)) #10 ; 12 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %Py_DECREF.exit187.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bq = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 82448)) #10 ; 11 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %Py_DECREF.exit187.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bs = getelementptr i8, ptr %i.bo, i64 8
  %.val218.i = load ptr, ptr %i.bs, align 8, !tbaa !295
  %i.bt = getelementptr i8, ptr %.val218.i, i64 168
  %.val222.i = load i64, ptr %i.bt, align 8, !tbaa !316
  %i.bu = and i64 %.val222.i, 268435456
  %.not173.i = icmp eq i64 %i.bu, 0
  br i1 %.not173.i, label %Py_DECREF.exit187.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bv = getelementptr i8, ptr %i.bq, i64 8
  %.val.i = load ptr, ptr %i.bv, align 8, !tbaa !295
  %i.bw = getelementptr i8, ptr %.val.i, i64 168
  %.val221.i = load i64, ptr %i.bw, align 8, !tbaa !316
  %i.bx = and i64 %.val221.i, 268435456
  %.not174.i = icmp eq i64 %i.bx, 0
  br i1 %.not174.i, label %Py_DECREF.exit187.critedge.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.by = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.bo) #10 ; 2 uses
end_hunk_1
begin_hunk_2_@builtin_input:bb.a
  %.0102.i = phi i64 [ 0, %bb.bj ], [ %spec.select.i, %bb.bk ]
  %i.dl = call ptr @PyUnicode_Decode(ptr noundef nonnull %i.cv, i64 noundef %.0102.i, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bk) #10
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi, %bb.bg
  %.0103.i = phi ptr [ null, %bb.bg ], [ null, %bb.bi ], [ %i.dl, %bb.bl ] ; 5 uses
  %i.dm = load i32, ptr %i.ay, align 8, !tbaa !293 ; 2 uses
  %.not.i194.i = icmp sgt i32 %i.dm, -1
  br i1 %.not.i194.i, label %bb.bn, label %Py_DECREF.exit195.i

bb.bn:                                            ; preds = %bb.bm
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.ay, align 8, !tbaa !293
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.bo, label %Py_DECREF.exit195.i

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #10
  br label %Py_DECREF.exit195.i

Py_DECREF.exit195.i:                              ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.dp = load i32, ptr %i.ba, align 8, !tbaa !293 ; 2 uses
  %.not.i192.i = icmp sgt i32 %i.dp, -1
  br i1 %.not.i192.i, label %bb.bp, label %Py_DECREF.exit193.i

bb.bp:                                            ; preds = %Py_DECREF.exit195.i
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.ba, align 8, !tbaa !293
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.bq, label %Py_DECREF.exit193.i

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #10
  br label %Py_DECREF.exit193.i

Py_DECREF.exit193.i:                              ; preds = %bb.bq, %bb.bp, %Py_DECREF.exit195.i
  call fastcc void @Py_XDECREF(ptr noundef %.1108.i)
  call void @PyMem_Free(ptr noundef nonnull %i.cv) #10
  %.not177.i = icmp eq ptr %.0103.i, null
  br i1 %.not177.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %Py_DECREF.exit193.i
  %i.ds = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.115, ptr noundef nonnull %.0103.i) #10
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %Py_DECREF.exit187.thread10.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %Py_DECREF.exit193.i
  %i.du = load i32, ptr %i.f, align 8, !tbaa !293 ; 2 uses
  %.not.i190.i = icmp sgt i32 %i.du, -1
  br i1 %.not.i190.i, label %bb.bt, label %Py_DECREF.exit191.i

bb.bt:                                            ; preds = %bb.bs
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.f, align 8, !tbaa !293
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.bu, label %Py_DECREF.exit191.i

bb.bu:                                            ; preds = %bb.bt
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #10
  br label %Py_DECREF.exit191.i

Py_DECREF.exit191.i:                              ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.dx = load i32, ptr %i.j, align 8, !tbaa !293 ; 2 uses
  %.not.i188.i = icmp sgt i32 %i.dx, -1
  br i1 %.not.i188.i, label %bb.bv, label %Py_DECREF.exit189.i

bb.bv:                                            ; preds = %Py_DECREF.exit191.i
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.j, align 8, !tbaa !293
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.bw, label %Py_DECREF.exit189.i

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #10
  br label %Py_DECREF.exit189.i

Py_DECREF.exit189.i:                              ; preds = %bb.bw, %bb.bv, %Py_DECREF.exit191.i
  %i.ea = load i32, ptr %i.n, align 8, !tbaa !293 ; 2 uses
  %.not.i186.i = icmp sgt i32 %i.ea, -1
  br i1 %.not.i186.i, label %bb.bx, label %builtin_input_impl.exit

bb.bx:                                            ; preds = %Py_DECREF.exit189.i
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.n, align 8, !tbaa !293
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %Py_DECREF.exit.sink.split.i, label %builtin_input_impl.exit

.thread.i:                                        ; preds = %bb.ah, %bb.ai, %bb.aq, %bb.ar, %bb.as, %Py_DECREF.exit197.i, %bb.bb, %bb.bd, %bb.be
  %.3135.i = phi ptr [ null, %Py_DECREF.exit197.i ], [ null, %bb.bb ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.bd ], [ null, %bb.be ], [ %i.bq, %bb.as ], [ %i.bq, %bb.ar ], [ %i.bq, %bb.aq ]
  %.3131.i = phi ptr [ null, %Py_DECREF.exit197.i ], [ null, %bb.bb ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.bd ], [ null, %bb.be ], [ %i.bo, %bb.as ], [ %i.bo, %bb.ar ], [ %i.bo, %bb.aq ]
  %.2.i = phi ptr [ null, %Py_DECREF.exit197.i ], [ %i.ce, %bb.bb ], [ null, %bb.ah ], [ null, %bb.ai ], [ %.1108.i, %bb.bd ], [ %.1108.i, %bb.be ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ]
  %i.ed = load i32, ptr %i.ay, align 8, !tbaa !293 ; 2 uses
  %.not.i.i12 = icmp sgt i32 %i.ed, -1
  br i1 %.not.i.i12, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %.thread.i
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ay, align 8, !tbaa !293
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #10
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.thread.i
  call fastcc void @Py_XDECREF(ptr noundef %.3131.i)
  %i.eg = load i32, ptr %i.ba, align 8, !tbaa !293 ; 2 uses
  %.not.i.i10 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i.i10, label %bb.cb, label %Py_XDECREF.exit

bb.cb:                                            ; preds = %bb.ca
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ba, align 8, !tbaa !293
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.cc, label %Py_XDECREF.exit

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.ca, %bb.cb, %bb.cc
  call fastcc void @Py_XDECREF(ptr noundef %.3135.i)
  call fastcc void @Py_XDECREF(ptr noundef %.2.i)
  br label %Py_DECREF.exit187.thread10.i

Py_DECREF.exit187.critedge.i:                     ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.3135.ph.i = phi ptr [ null, %bb.an ], [ null, %bb.am ], [ %i.bq, %bb.ao ], [ %i.bq, %bb.ap ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ad ], [ null, %bb.ae ]
  %.3131.ph.i = phi ptr [ %i.bo, %bb.an ], [ null, %bb.am ], [ %i.bo, %bb.ao ], [ %i.bo, %bb.ap ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ad ], [ null, %bb.ae ]
  %.0104.ph.i = phi ptr [ %i.ba, %bb.an ], [ %i.ba, %bb.am ], [ %i.ba, %bb.ao ], [ %i.ba, %bb.ap ], [ %i.ba, %bb.ag ], [ %i.ba, %bb.af ], [ null, %bb.ad ], [ null, %bb.ae ]
  call fastcc void @Py_XDECREF(ptr noundef %i.ay)
  call fastcc void @Py_XDECREF(ptr noundef %.3131.ph.i)
  call fastcc void @Py_XDECREF(ptr noundef %.0104.ph.i)
  call fastcc void @Py_XDECREF(ptr noundef %.3135.ph.i)
  br label %.critedge181.sink.split.i

.critedge181.sink.split.i:                        ; preds = %Py_DECREF.exit187.critedge.i, %bb.x, %bb.q
  call void @PyErr_Clear() #10
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %.critedge181.sink.split.i, %.critedge.i, %bb.ac, %bb.w, %bb.v
  br i1 %.not.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.critedge181.i
  %i.ej = call i32 @PyFile_WriteObject(ptr noundef nonnull %.0, ptr noundef nonnull %i.j, i32 noundef 1) #10
  %.not180.i = icmp eq i32 %i.ej, 0
  br i1 %.not180.i, label %bb.ce, label %Py_DECREF.exit187.thread10.i

bb.ce:                                            ; preds = %bb.cd, %.critedge181.i
  %i.ek = call i32 @_PyFile_Flush(ptr noundef nonnull %i.j) #10
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @PyErr_Clear() #10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.em = call ptr @PyFile_GetLine(ptr noundef nonnull %i.f, i32 noundef -1) #10 ; 3 uses
  %i.en = load i32, ptr %i.f, align 8, !tbaa !293 ; 2 uses
  %.not.i184.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i184.i, label %bb.ch, label %Py_DECREF.exit185.i

bb.ch:                                            ; preds = %bb.cg
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.f, align 8, !tbaa !293
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ci, label %Py_DECREF.exit185.i

bb.ci:                                            ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #10
  br label %Py_DECREF.exit185.i

Py_DECREF.exit185.i:                              ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.eq = load i32, ptr %i.j, align 8, !tbaa !293 ; 2 uses
  %.not.i182.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i182.i, label %bb.cj, label %Py_DECREF.exit183.i

bb.cj:                                            ; preds = %Py_DECREF.exit185.i
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %i.j, align 8, !tbaa !293
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ck, label %Py_DECREF.exit183.i

bb.ck:                                            ; preds = %bb.cj
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #10
  br label %Py_DECREF.exit183.i

Py_DECREF.exit183.i:                              ; preds = %bb.ck, %bb.cj, %Py_DECREF.exit185.i
  %i.et = load i32, ptr %i.n, align 8, !tbaa !293 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.et, -1
  br i1 %.not.i.i, label %bb.cl, label %builtin_input_impl.exit

bb.cl:                                            ; preds = %Py_DECREF.exit183.i
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.n, align 8, !tbaa !293
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %Py_DECREF.exit.sink.split.i, label %builtin_input_impl.exit

Py_DECREF.exit187.thread10.i:                     ; preds = %bb.cd, %Py_XDECREF.exit, %bb.br, %bb.ab, %bb.u, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g
  %.0113.ph.i = phi ptr [ %i.j, %bb.u ], [ %i.j, %bb.ab ], [ null, %bb.g ], [ %i.j, %bb.cd ], [ %i.j, %bb.n ], [ %i.j, %bb.m ], [ %i.j, %bb.k ], [ %i.j, %bb.j ], [ null, %bb.h ], [ %i.j, %bb.br ], [ %i.j, %Py_XDECREF.exit ] ; 4 uses
  %.0112.ph.i = phi ptr [ %i.n, %bb.u ], [ %i.n, %bb.ab ], [ null, %bb.g ], [ %i.n, %bb.cd ], [ %i.n, %bb.n ], [ %i.n, %bb.m ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.h ], [ %i.n, %bb.br ], [ %i.n, %Py_XDECREF.exit ] ; 4 uses
  %i.ew = load i32, ptr %i.f, align 8, !tbaa !293 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ew, -1
  br i1 %.not.i.i.i, label %bb.cm, label %Py_XDECREF.exit.i

bb.cm:                                            ; preds = %Py_DECREF.exit187.thread10.i
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.f, align 8, !tbaa !293
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.cn, label %Py_XDECREF.exit.i

bb.cn:                                            ; preds = %bb.cm
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.cn, %bb.cm, %Py_DECREF.exit187.thread10.i
  %.not.i227.i = icmp eq ptr %.0113.ph.i, null
  br i1 %.not.i227.i, label %Py_XDECREF.exit229.i, label %bb.co

bb.co:                                            ; preds = %Py_XDECREF.exit.i
  %i.ez = load i32, ptr %.0113.ph.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i228.i = icmp sgt i32 %i.ez, -1
  br i1 %.not.i.i228.i, label %bb.cp, label %Py_XDECREF.exit229.i

bb.cp:                                            ; preds = %bb.co
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %.0113.ph.i, align 8, !tbaa !293
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.cq, label %Py_XDECREF.exit229.i

bb.cq:                                            ; preds = %bb.cp
  call void @_Py_Dealloc(ptr noundef nonnull %.0113.ph.i) #10
  br label %Py_XDECREF.exit229.i

Py_XDECREF.exit229.i:                             ; preds = %bb.cq, %bb.cp, %bb.co, %Py_XDECREF.exit.i
  %.not.i230.i = icmp eq ptr %.0112.ph.i, null
  br i1 %.not.i230.i, label %builtin_input_impl.exit, label %bb.cr

bb.cr:                                            ; preds = %Py_XDECREF.exit229.i
  %i.fc = load i32, ptr %.0112.ph.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i231.i = icmp sgt i32 %i.fc, -1
  br i1 %.not.i.i231.i, label %bb.cs, label %builtin_input_impl.exit

bb.cs:                                            ; preds = %bb.cr
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %.0112.ph.i, align 8, !tbaa !293
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %Py_DECREF.exit.sink.split.i, label %builtin_input_impl.exit

Py_DECREF.exit.sink.split.i:                      ; preds = %bb.cs, %bb.cl, %bb.bx
  %.sink.i = phi ptr [ %i.n, %bb.bx ], [ %i.n, %bb.cl ], [ %.0112.ph.i, %bb.cs ]
  %.1115.ph.i = phi ptr [ %.0103.i, %bb.bx ], [ %i.em, %bb.cl ], [ null, %bb.cs ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #10
  br label %builtin_input_impl.exit

builtin_input_impl.exit:                          ; preds = %Py_DECREF.exit.sink.split.i, %bb.cs, %bb.cr, %Py_XDECREF.exit229.i, %bb.cl, %Py_DECREF.exit183.i, %bb.bx, %Py_DECREF.exit189.i, %bb.e, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ %.0103.i, %Py_DECREF.exit189.i ], [ null, %bb.e ], [ %i.em, %Py_DECREF.exit183.i ], [ %i.em, %bb.cl ], [ %.0103.i, %bb.bx ], [ null, %Py_XDECREF.exit229.i ], [ null, %bb.cr ], [ null, %bb.cs ], [ %.1115.ph.i, %Py_DECREF.exit.sink.split.i ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_isinstance(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !429 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.77, i64 noundef %2, i64 noundef 2, i64 noundef 2) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %builtin_isinstance_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = tail call i32 @PyObject_IsInstance(ptr noundef %i.b, ptr noundef %i.d) #10 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %builtin_isinstance_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64
  %i.h = tail call ptr @PyBool_FromLong(i64 noundef %i.g) #10
  br label %builtin_isinstance_impl.exit

builtin_isinstance_impl.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_issubclass(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !430 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.78, i64 noundef %2, i64 noundef 2, i64 noundef 2) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %builtin_issubclass_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = tail call i32 @PyObject_IsSubclass(ptr noundef %i.b, ptr noundef %i.d) #10 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %builtin_issubclass_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64
  %i.h = tail call ptr @PyBool_FromLong(i64 noundef %i.g) #10
  br label %builtin_issubclass_impl.exit

builtin_issubclass_impl.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_iter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !431 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.79, i64 noundef %2, i64 noundef 1, i64 noundef 2) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !306
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !306    ; 2 uses
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyObject_GetIter(ptr noundef %i.d) #10
  br label %bb.h

bb.e:                                             ; preds = %.thread, %bb.c
  %i.g = phi ptr [ %i.c, %.thread ], [ %i.d, %bb.c ] ; 2 uses
  %i.h = tail call i32 @PyCallable_Check(ptr noundef %i.g) #10
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.158) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !306
  %i.l = tail call ptr @PyCallIter_New(ptr noundef %i.g, ptr noundef %i.k) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.g ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_aiter(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !432 {
bb.a:
  %i.a = tail call ptr @PyObject_GetAIter(ptr noundef %1) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_len(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !433 {
bb.a:
  %i.a = tail call i64 @PyObject_Size(ptr noundef %1) #10 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_locals(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !434 {
bb.a:
  %i.a = tail call ptr @_PyEval_GetFrame() #10
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_PyEval_GetFrameLocals() #10
  br label %builtin_locals_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
end_hunk_2
begin_hunk_3_@builtin_ord:bb.a
bb.n:                                             ; preds = %bb.m
  %i.z = and i32 %i.n, 64
  %.not.i.i20.i = icmp eq i32 %i.z, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i = load ptr, ptr %i.aa, align 8, !tbaa !293
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.o, %bb.n
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.n ], [ %.val4.i24.i, %bb.o ]
  %i.ab = load i32, ptr %.0.i23.i, align 4, !tbaa !10
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
  %.val30 = load i64, ptr %i.af, align 8, !tbaa !313 ; 2 uses
  %i.ag = icmp eq i64 %.val30, 1
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.ah = getelementptr i8, ptr %1, i64 40
  %.val31 = load ptr, ptr %i.ah, align 8, !tbaa !450
  %i.ai = load i8, ptr %.val31, align 1, !tbaa !293
  %i.aj = zext i8 %i.ai to i64
  %i.ak = tail call ptr @PyLong_FromLong(i64 noundef %i.aj) #10
  br label %bb.t

bb.r:                                             ; preds = %PyObject_TypeCheck.exit
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  %.val = load ptr, ptr %i.a, align 8, !tbaa !295
  %i.am = getelementptr i8, ptr %.val, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !326
  %i.ao = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.168, ptr noundef %i.an) #10 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.e, %PyObject_TypeCheck.exit.thread, %bb.b
  %.0 = phi i64 [ %.val28, %bb.b ], [ %.val29, %bb.e ], [ %.val30, %PyObject_TypeCheck.exit.thread ]
  %i.ap = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  %i.aq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ap, ptr noundef nonnull @.str.169, i64 noundef %.0) #10 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %PyUnicode_READ_CHAR.exit, %bb.c
  %.017 = phi ptr [ %i.i, %bb.c ], [ null, %bb.s ], [ %i.ad, %PyUnicode_READ_CHAR.exit ], [ %i.ak, %bb.q ], [ null, %bb.r ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_pow(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !451 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !313
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
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !306
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !306
  %.not30 = icmp eq i64 %i.j, 2
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread33
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !306
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
define internal noundef ptr @builtin_print(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !453 {
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
  %.val = load i64, ptr %i.d, align 8, !tbaa !313 ; 3 uses
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
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !306  ; 3 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306  ; 3 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !306  ; 3 uses
  %.not58 = icmp eq ptr %i.m, null
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = icmp ugt i64 %.140, 1
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.034 = phi ptr [ %i.m, %bb.j ], [ @_Py_NoneStruct, %bb.i ]
  %i.o = getelementptr i8, ptr %i.e, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !306
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
  %i.t = call ptr @PySys_GetAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896)) #10 ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %builtin_print_impl.exit, label %bb.m

bb.m:                                             ; preds = %.thread65
  %i.v = icmp eq ptr %i.t, @_Py_NoneStruct
  br i1 %i.v, label %bb.n, label %Py_INCREF.exit.i

bb.n:                                             ; preds = %bb.m
  %i.w = load i32, ptr %i.t, align 8, !tbaa !293  ; 2 uses
  %.not.i70.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i70.i, label %bb.o, label %builtin_print_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.t, align 8, !tbaa !293
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.p:                                             ; preds = %bb.l
  %i.z = load i32, ptr %.1, align 8, !tbaa !293   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %Py_INCREF.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %.1, align 8, !tbaa !293
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
  %.val81.i = load ptr, ptr %i.ad, align 8, !tbaa !295 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val81.i, i64 168
  %.val83.i = load i64, ptr %i.ae, align 8, !tbaa !316
  %i.af = and i64 %.val83.i, 268435456
  %.not50.i = icmp eq i64 %i.af, 0
  br i1 %.not50.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  %i.ah = getelementptr i8, ptr %.val81.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !326
  %i.aj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.177, ptr noundef %i.ai) #10 ; 0 uses
  %i.ak = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i68.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i68.i, label %bb.t, label %builtin_print_impl.exit

bb.t:                                             ; preds = %bb.s
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.042.i, align 8, !tbaa !293
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.u:                                             ; preds = %bb.r, %Py_INCREF.exit.i
  %.044.i = phi ptr [ null, %Py_INCREF.exit.i ], [ %.13870, %bb.r ] ; 2 uses
  %i.an = icmp eq ptr %.13672, @_Py_NoneStruct
  br i1 %i.an, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr i8, ptr %.13672, i64 8
  %.val79.i = load ptr, ptr %i.ao, align 8, !tbaa !295 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val79.i, i64 168
  %.val82.i = load i64, ptr %i.ap, align 8, !tbaa !316
  %i.aq = and i64 %.val82.i, 268435456
  %.not52.i = icmp eq i64 %i.aq, 0
  br i1 %.not52.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  %i.as = getelementptr i8, ptr %.val79.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !326
  %i.au = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str.178, ptr noundef %i.at) #10 ; 0 uses
  %i.av = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i66.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i66.i, label %bb.x, label %builtin_print_impl.exit

bb.x:                                             ; preds = %bb.w
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %.042.i, align 8, !tbaa !293
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
  br i1 %i.be, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !452

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.bf = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.36, ptr noundef nonnull %.042.i) #10
  %.not55.us.i = icmp eq i32 %i.bf, 0
  br i1 %.not55.us.i, label %bb.ab, label %.split.us.i

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.split.us.i
  %i.bg = getelementptr [8 x i8], ptr %1, i64 %i.ba
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !306
  %i.bi = call i32 @PyFile_WriteObject(ptr noundef %i.bh, ptr noundef nonnull %.042.i, i32 noundef 1) #10
  %.not56.us.i = icmp eq i32 %i.bi, 0
  br i1 %.not56.us.i, label %bb.z, label %.split3.us.i

bb.ac:                                            ; preds = %bb.af
  %i.bj = add i32 %.0401.i, 1                     ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = icmp sgt i64 %2, %i.bk
  br i1 %i.bl, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !452

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
  %i.bp = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i64.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i64.i, label %bb.ae, label %builtin_print_impl.exit

bb.ae:                                            ; preds = %.split.us.i
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %.042.i, align 8, !tbaa !293
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.af:                                            ; preds = %bb.ad, %.lr.ph.split.i
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !306
  %i.bu = call i32 @PyFile_WriteObject(ptr noundef %i.bt, ptr noundef nonnull %.042.i, i32 noundef 1) #10
  %.not56.i = icmp eq i32 %i.bu, 0
  br i1 %.not56.i, label %bb.ac, label %.split3.us.i

.split3.us.i:                                     ; preds = %bb.af, %bb.ab
  %i.bv = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i62.i = icmp sgt i32 %i.bv, -1
  br i1 %.not.i62.i, label %bb.ag, label %builtin_print_impl.exit

bb.ag:                                            ; preds = %.split3.us.i
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %.042.i, align 8, !tbaa !293
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
  %i.cb = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i60.i, label %bb.al, label %builtin_print_impl.exit

bb.al:                                            ; preds = %bb.ak
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %.042.i, align 8, !tbaa !293
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
  %i.cg = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i58.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i58.i, label %bb.ap, label %builtin_print_impl.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %.042.i, align 8, !tbaa !293
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

bb.aq:                                            ; preds = %bb.an, %bb.am
  %i.cj = load i32, ptr %.042.i, align 8, !tbaa !293 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i.i, label %bb.ar, label %builtin_print_impl.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %.042.i, align 8, !tbaa !293
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %Py_DECREF.exit71.sink.split.i, label %builtin_print_impl.exit

Py_DECREF.exit71.sink.split.i:                    ; preds = %bb.ar, %bb.ap, %bb.al, %bb.ag, %bb.ae, %bb.x, %bb.t, %bb.o
  %.042.sink.i = phi ptr [ %.042.i, %bb.ap ], [ %.042.i, %bb.al ], [ %.042.i, %bb.ag ], [ %.042.i, %bb.ae ], [ %.042.i, %bb.x ], [ %.042.i, %bb.t ], [ %i.t, %bb.o ], [ %.042.i, %bb.ar ]
  %.041.ph.i = phi ptr [ null, %bb.ap ], [ null, %bb.al ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.x ], [ null, %bb.t ], [ @_Py_NoneStruct, %bb.o ], [ @_Py_NoneStruct, %bb.ar ]
  call void @_Py_Dealloc(ptr noundef nonnull %.042.sink.i) #10
  br label %builtin_print_impl.exit

builtin_print_impl.exit:                          ; preds = %.thread104, %Py_DECREF.exit71.sink.split.i, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.al, %bb.ak, %bb.ag, %.split3.us.i, %bb.ae, %.split.us.i, %bb.x, %bb.w, %bb.t, %bb.s, %bb.o, %bb.n, %.thread65, %bb.k, %bb.c
  %.041 = phi ptr [ null, %bb.k ], [ null, %bb.c ], [ null, %bb.ag ], [ null, %.thread65 ], [ null, %bb.ak ], [ null, %bb.al ], [ null, %bb.ao ], [ null, %bb.ap ], [ @_Py_NoneStruct, %bb.aq ], [ @_Py_NoneStruct, %bb.ar ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %bb.o ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.w ], [ null, %bb.x ], [ null, %.split.us.i ], [ null, %bb.ae ], [ null, %.split3.us.i ], [ %.041.ph.i, %Py_DECREF.exit71.sink.split.i ], [ null, %.thread104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_repr(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 !guid !454 {
bb.a:
  %i.a = tail call ptr @PyObject_Repr(ptr noundef %1) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_round(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !455 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !313
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1
  %i.e = icmp ult i64 %i.d, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread31, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @builtin_round._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %builtin_round_impl.exit, label %.thread31

.thread31:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !306  ; 3 uses
  %.not28 = icmp eq i64 %i.j, 1
  br i1 %.not28, label %.thread33, label %bb.d

bb.d:                                             ; preds = %.thread31
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !306  ; 2 uses
  %i.n = icmp eq ptr %i.m, @_Py_NoneStruct
  br i1 %i.n, label %.thread33, label %bb.e

.thread33:                                        ; preds = %.thread31, %bb.d
  %i.o = call ptr @_PyObject_MaybeCallSpecialNoArgs(ptr noundef %i.k, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69608)) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @_PyObject_MaybeCallSpecialOneArg(ptr noundef %i.k, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 69608), ptr noundef %i.m) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread33
  %.0.i = phi ptr [ %i.o, %.thread33 ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp eq ptr %.0.i, null
  br i1 %i.q, label %bb.g, label %builtin_round_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.r = call ptr @PyErr_Occurred() #10
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.h, label %builtin_round_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !306
  %i.t = getelementptr i8, ptr %i.k, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !295
  %i.u = getelementptr i8, ptr %.val.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !326
  %i.w = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.182, ptr noundef %i.v) #10 ; 0 uses
  br label %builtin_round_impl.exit

builtin_round_impl.exit:                          ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %.023 = phi ptr [ null, %bb.c ], [ %.0.i, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_setattr(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !456 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.93, i64 noundef %2, i64 noundef 3, i64 noundef 3) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !306
  %i.g = tail call i32 @PyObject_SetAttr(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #10
  %.not.i = icmp eq i32 %i.g, 0
  %_Py_NoneStruct..i = select i1 %.not.i, ptr @_Py_NoneStruct, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %_Py_NoneStruct..i, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_sorted(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !457 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, i64, ptr, i64, i64, ...) @_PyArg_UnpackStack(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.94, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !306
  %i.d = call ptr @PySequence_List(ptr noundef %i.c) #10 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100120)) #10 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.d, align 8, !tbaa !293  ; 2 uses
  %.not.i22 = icmp sgt i32 %i.h, -1
  br i1 %.not.i22, label %bb.e, label %Py_DECREF.exit23

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !293
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = add i64 %2, -1
  %i.m = call ptr @PyObject_Vectorcall(ptr noundef nonnull %i.f, ptr noundef %i.k, i64 noundef %i.l, ptr noundef %3) #10 ; 4 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !293  ; 2 uses
  %.not.i20 = icmp sgt i32 %i.n, -1
  br i1 %.not.i20, label %bb.g, label %Py_DECREF.exit21

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.f, align 8, !tbaa !293
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit21

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #10
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.q = icmp eq ptr %i.m, null
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %Py_DECREF.exit21
  %i.r = load i32, ptr %i.d, align 8, !tbaa !293  ; 2 uses
  %.not.i18 = icmp sgt i32 %i.r, -1
  br i1 %.not.i18, label %bb.j, label %Py_DECREF.exit23

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !293
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

bb.k:                                             ; preds = %Py_DECREF.exit21
  %i.u = load i32, ptr %i.m, align 8, !tbaa !293  ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit23

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.m, align 8, !tbaa !293
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

Py_DECREF.exit23.sink.split:                      ; preds = %bb.l, %bb.j, %bb.e
  %.sink = phi ptr [ %i.d, %bb.j ], [ %i.d, %bb.e ], [ %i.m, %bb.l ]
  %.0.ph = phi ptr [ null, %bb.j ], [ null, %bb.e ], [ %i.d, %bb.l ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #10
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit23.sink.split, %bb.l, %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %bb.k ], [ %i.d, %bb.l ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.j ], [ %.0.ph, %Py_DECREF.exit23.sink.split ]
end_hunk_3
