Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_functoolsmodule?download=true
inline.NumInlined: 172
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_functools_clear:bb.a
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit48

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit50
  %i.k = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 4 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %Py_DECREF.exit46, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit48
  store ptr null, ptr %i.k, align 8, !tbaa !28
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not.i45 = icmp sgt i32 %i.m, -1
  br i1 %.not.i45, label %bb.i, label %Py_DECREF.exit46

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !29
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit46

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit48
  %i.p = getelementptr i8, ptr %.val, i64 24      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 4 uses
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %Py_DECREF.exit44, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit46
  store ptr null, ptr %i.p, align 8, !tbaa !30
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %.not.i43 = icmp sgt i32 %i.r, -1
  br i1 %.not.i43, label %bb.l, label %Py_DECREF.exit44

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !29
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit44

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #8
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit46
  %i.u = getelementptr i8, ptr %.val, i64 32      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 4 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %Py_DECREF.exit42, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit44
  store ptr null, ptr %i.u, align 8, !tbaa !30
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %.not.i41 = icmp sgt i32 %i.w, -1
  br i1 %.not.i41, label %bb.o, label %Py_DECREF.exit42

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !29
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %Py_DECREF.exit42

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #8
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit44
  %i.z = getelementptr i8, ptr %.val, i64 40      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 4 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit42
  store ptr null, ptr %i.z, align 8, !tbaa !30
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !29
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %Py_DECREF.exit42
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @_functools_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @_functools_clear(ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @_functools_reduce(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !32
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
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_functools_reduce._parser, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %_functools_reduce_impl.exit, label %.thread33

.thread33:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %.not30 = icmp eq i64 %i.j, 2
  br i1 %.not30, label %Py_INCREF.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread33
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 5 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %Py_INCREF.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %Py_INCREF.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %i.o, align 8, !tbaa !29
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %.thread33, %bb.f, %bb.e, %bb.d
  %.not.i39 = phi i1 [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ true, %.thread33 ]
  %.038 = phi ptr [ null, %bb.d ], [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ null, %.thread33 ] ; 5 uses
  %i.s = call ptr @PyObject_GetIter(ptr noundef %i.m) #8 ; 8 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %Py_INCREF.exit.i
  %i.u = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !28
  %i.v = call i32 @PyErr_ExceptionMatches(ptr noundef %i.u) #8
  %.not49.i = icmp eq i32 %i.v, 0
  br i1 %.not49.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !28
  call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.6) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not.i39, label %_functools_reduce_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %.038, align 8, !tbaa !29  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i.i, label %bb.k, label %_functools_reduce_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.038, align 8, !tbaa !29
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %Py_XDECREF.exit.sink.split.i, label %_functools_reduce_impl.exit

bb.l:                                             ; preds = %Py_INCREF.exit.i
  %i.aa = call ptr @PyTuple_New(i64 noundef 2) #8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %Py_XDECREF.exit68.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.ac = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %_PyTuple_Recycle.exit.i

_PyTuple_Recycle.exit.i:                          ; preds = %_PyTuple_Recycle.exit.i.backedge, %.preheader.i
  %.033.i = phi ptr [ %i.aa, %.preheader.i ], [ %.134.i, %_PyTuple_Recycle.exit.i.backedge ] ; 3 uses
  %.032.i = phi ptr [ %.038, %.preheader.i ], [ %.032.i.be, %_PyTuple_Recycle.exit.i.backedge ] ; 8 uses
  %.033.val.i = load i32, ptr %.033.i, align 8, !tbaa !29 ; 3 uses
  %.not20.i = icmp eq i32 %.033.val.i, 1
  br i1 %.not20.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_PyTuple_Recycle.exit.i
  %.not.i54.i = icmp sgt i32 %.033.val.i, -1
  br i1 %.not.i54.i, label %bb.n, label %Py_DECREF.exit55.i

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %.033.val.i, -1
  store i32 %i.ad, ptr %.033.i, align 8, !tbaa !29
  br label %Py_DECREF.exit55.i

Py_DECREF.exit55.i:                               ; preds = %bb.n, %bb.m
  %i.ae = call ptr @PyTuple_New(i64 noundef 2) #8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %Py_XDECREF.exit68.i, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit55.i, %_PyTuple_Recycle.exit.i
  %.134.i = phi ptr [ %.033.i, %_PyTuple_Recycle.exit.i ], [ %i.ae, %Py_DECREF.exit55.i ] ; 13 uses
  %i.ag = call ptr @PyIter_Next(ptr noundef nonnull %i.s) #8 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = call ptr @PyErr_Occurred() #8
  %.not48.i = icmp eq ptr %i.ai, null
  br i1 %.not48.i, label %bb.ab, label %.loopexit.i

bb.q:                                             ; preds = %bb.o
  %i.aj = icmp eq ptr %.032.i, null
  br i1 %i.aj, label %_PyTuple_Recycle.exit.i.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %.134.i, i64 32   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 4 uses
  store ptr %.032.i, ptr %i.ak, align 8, !tbaa !28
  %.not.i60.i = icmp eq ptr %i.al, null
  br i1 %.not.i60.i, label %Py_XDECREF.exit62.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load i32, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not.i.i61.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i61.i, label %bb.t, label %Py_XDECREF.exit62.i

bb.t:                                             ; preds = %bb.s
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !29
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.u, label %Py_XDECREF.exit62.i

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #8
  br label %Py_XDECREF.exit62.i

Py_XDECREF.exit62.i:                              ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ap = getelementptr i8, ptr %.134.i, i64 40   ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 4 uses
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !28
  %.not.i63.i = icmp eq ptr %i.aq, null
  br i1 %.not.i63.i, label %Py_XDECREF.exit65.i, label %bb.v

bb.v:                                             ; preds = %Py_XDECREF.exit62.i
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i.i64.i, label %bb.w, label %Py_XDECREF.exit65.i

bb.w:                                             ; preds = %bb.v
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !29
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.x, label %Py_XDECREF.exit65.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #8
  br label %Py_XDECREF.exit65.i

Py_XDECREF.exit65.i:                              ; preds = %bb.x, %bb.w, %bb.v, %Py_XDECREF.exit62.i
  %i.au = call ptr @PyObject_Call(ptr noundef %i.k, ptr noundef nonnull %.134.i, ptr noundef null) #8 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %Py_XDECREF.exit65.i
  %i.aw = getelementptr i8, ptr %.134.i, i64 24
  store i64 -1, ptr %i.aw, align 8, !tbaa !84
  %i.ax = getelementptr i8, ptr %.134.i, i64 -16  ; 3 uses
  %.val.i.i = load i64, ptr %i.ax, align 8, !tbaa !86
  %.not3.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not3.i.i, label %bb.z, label %_PyTuple_Recycle.exit.i.backedge

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !88 ; 7 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 7408
  %i.ba = getelementptr i8, ptr %i.ay, i64 7416   ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !89 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !86
  %i.bf = and i64 %i.be, 3
  %i.bg = or i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !86
  %i.bh = getelementptr i8, ptr %.134.i, i64 -8   ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !89
  %i.bj = and i64 %i.bi, 3
  %i.bk = or i64 %i.bj, %i.bb
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !89
  %i.bl = getelementptr i8, ptr %i.ay, i64 7672
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !93
  %i.bn = xor i32 %i.bm, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = ptrtoint ptr %i.az to i64
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.ax, align 8, !tbaa !86
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !89
  %i.br = getelementptr i8, ptr %i.ay, i64 7428   ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !94
  %i.bt = add i32 %i.bs, 1                        ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !94
  %i.bu = getelementptr i8, ptr %i.ay, i64 7656   ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !95
  %i.bx = getelementptr i8, ptr %i.ay, i64 7424
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !96
  %i.bz = icmp sgt i32 %i.bt, %i.by
  br i1 %i.bz, label %bb.aa, label %_PyTuple_Recycle.exit.i.backedge

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr i8, ptr %i.ay, i64 7400
  call void @_Py_TriggerGC(ptr noundef %i.ca) #8
  br label %_PyTuple_Recycle.exit.i.backedge

_PyTuple_Recycle.exit.i.backedge:                 ; preds = %bb.aa, %bb.z, %bb.y, %bb.q
  %.032.i.be = phi ptr [ %i.au, %bb.aa ], [ %i.au, %bb.z ], [ %i.au, %bb.y ], [ %i.ag, %bb.q ]
  br label %_PyTuple_Recycle.exit.i

bb.ab:                                            ; preds = %bb.p
  %i.cb = load i32, ptr %.134.i, align 8, !tbaa !29 ; 2 uses
  %.not.i52.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i52.i, label %bb.ac, label %Py_DECREF.exit53.i

bb.ac:                                            ; preds = %bb.ab
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %.134.i, align 8, !tbaa !29
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ad, label %Py_DECREF.exit53.i

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %.134.i) #8
  br label %Py_DECREF.exit53.i

Py_DECREF.exit53.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ce = icmp eq ptr %.032.i, null
  br i1 %i.ce, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %Py_DECREF.exit53.i
  %i.cf = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !28
  call void @PyErr_SetString(ptr noundef %i.cf, ptr noundef nonnull @.str.7) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %Py_DECREF.exit53.i
  %i.cg = load i32, ptr %i.s, align 8, !tbaa !29  ; 2 uses
  %.not.i50.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i50.i, label %bb.ag, label %_functools_reduce_impl.exit

bb.ag:                                            ; preds = %bb.af
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.s, align 8, !tbaa !29
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %Py_XDECREF.exit.sink.split.i, label %_functools_reduce_impl.exit

.loopexit.i:                                      ; preds = %Py_XDECREF.exit65.i, %bb.p
  %.2.ph.ph.i = phi ptr [ %.032.i, %bb.p ], [ null, %Py_XDECREF.exit65.i ] ; 3 uses
  %i.cj = load i32, ptr %.134.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i67.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i.i67.i, label %bb.ah, label %Py_XDECREF.exit68.i

bb.ah:                                            ; preds = %.loopexit.i
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %.134.i, align 8, !tbaa !29
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ai, label %Py_XDECREF.exit68.i

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %.134.i) #8
  br label %Py_XDECREF.exit68.i

Py_XDECREF.exit68.i:                              ; preds = %Py_DECREF.exit55.i, %bb.ai, %bb.ah, %.loopexit.i, %bb.l
  %.313.i = phi ptr [ %.038, %bb.l ], [ %.2.ph.ph.i, %bb.ai ], [ %.2.ph.ph.i, %.loopexit.i ], [ %.2.ph.ph.i, %bb.ah ], [ %.032.i, %Py_DECREF.exit55.i ] ; 4 uses
  %.not.i69.i = icmp eq ptr %.313.i, null
  br i1 %.not.i69.i, label %Py_XDECREF.exit71.i, label %bb.aj

bb.aj:                                            ; preds = %Py_XDECREF.exit68.i
  %i.cm = load i32, ptr %.313.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i70.i = icmp sgt i32 %i.cm, -1
  br i1 %.not.i.i70.i, label %bb.ak, label %Py_XDECREF.exit71.i

bb.ak:                                            ; preds = %bb.aj
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %.313.i, align 8, !tbaa !29
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.al, label %Py_XDECREF.exit71.i

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %.313.i) #8
  br label %Py_XDECREF.exit71.i

Py_XDECREF.exit71.i:                              ; preds = %bb.al, %bb.ak, %bb.aj, %Py_XDECREF.exit68.i
  %i.cp = load i32, ptr %i.s, align 8, !tbaa !29  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i, label %bb.am, label %_functools_reduce_impl.exit

bb.am:                                            ; preds = %Py_XDECREF.exit71.i
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
end_hunk_0
