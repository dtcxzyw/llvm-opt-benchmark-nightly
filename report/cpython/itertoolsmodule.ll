Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/itertoolsmodule?download=true
inline.NumInlined: 375
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@product_next:bb.a
bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #8
  br label %Py_DECREF.exit77.i

Py_DECREF.exit77.i:                               ; preds = %bb.t, %bb.s, %Py_INCREF.exit82.i
  %.167.i = add nsw i64 %.16797.i, -1
  %i.cf = icmp sgt i64 %.16797.i, 0
  br i1 %i.cf, label %bb.p, label %Py_DECREF.exit79.thread89.i, !llvm.loop !483

bb.u:                                             ; preds = %bb.p
  %i.cg = getelementptr i8, ptr %i.bp, i64 32
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.bs
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !241 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !240 ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, -1073741825
  br i1 %i.ck, label %Py_INCREF.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = add nuw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.ci, align 8, !tbaa !240
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.v, %bb.u
  %i.cm = getelementptr [8 x i8], ptr %i.bn, i64 %.16797.i ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !241 ; 3 uses
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !241
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !240 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.co, -1
  br i1 %.not.i.i, label %bb.w, label %Py_DECREF.exit79.i

bb.w:                                             ; preds = %Py_INCREF.exit.i
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !240
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %Py_DECREF.exit79.i

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cn) #8
  br label %Py_DECREF.exit79.i

Py_DECREF.exit79.i:                               ; preds = %Py_INCREF.exit83.i, %bb.x, %bb.w, %Py_INCREF.exit.i, %bb.d
  %.2.i = phi ptr [ %.068.i, %Py_INCREF.exit.i ], [ %.068.i, %bb.x ], [ %.068.i, %bb.w ], [ %i.i, %bb.d ], [ %i.i, %Py_INCREF.exit83.i ] ; 4 uses
  %i.cr = load i32, ptr %.2.i, align 8, !tbaa !240 ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, -1073741825
  br i1 %i.cs, label %product_next_lock_held.exit, label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit79.i
  %i.ct = add nuw i32 %i.cr, 1
  store i32 %i.ct, ptr %.2.i, align 8, !tbaa !240
  br label %product_next_lock_held.exit

Py_DECREF.exit79.thread89.i:                      ; preds = %Py_DECREF.exit77.i, %bb.e, %_PyTuple_Recycle.exit.i, %bb.i, %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !350
  br label %product_next_lock_held.exit

product_next_lock_held.exit:                      ; preds = %bb.a, %Py_DECREF.exit79.i, %bb.y, %Py_DECREF.exit79.thread89.i
  %.070.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit79.thread89.i ], [ %.2.i, %Py_DECREF.exit79.i ], [ %.2.i, %bb.y ]
  ret ptr %.070.i
}

; Function Attrs: nounwind uwtable
define internal ptr @product_new(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 !guid !487 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 1, ptr %i.a, align 8, !tbaa !286
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.product_new.kwlist, i64 16, i1 false)
  %i.c = tail call ptr @PyTuple_New(i64 noundef 0) #8 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef nonnull @.str.102, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %.not67 = icmp eq i32 %i.e, 0
  %i.f = load i32, ptr %i.c, align 8, !tbaa !240  ; 3 uses
  %.not.i69 = icmp sgt i32 %i.f, -1               ; 2 uses
  br i1 %.not67, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i69, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !240
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i69, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.i = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !240
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !286  ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !241
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.103) #8
  br label %.critedge

bb.k:                                             ; preds = %Py_DECREF.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.a, %bb.k
  %i.o = phi i64 [ %i.k, %bb.k ], [ 1, %bb.a ]    ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.p, align 8, !tbaa !265 ; 2 uses
  %i.q = udiv i64 1152921504606846975, %i.o
  %i.r = icmp ugt i64 %.val, %i.q
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.s = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !241
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.104) #8
  br label %Py_XDECREF.exit

bb.m:                                             ; preds = %bb.k, %.thread
  %i.t = phi i64 [ %i.o, %.thread ], [ 0, %bb.k ]
  %.058 = phi i64 [ %.val, %.thread ], [ 0, %bb.k ] ; 6 uses
  %i.u = mul i64 %.058, %i.t                      ; 5 uses
  %i.v = icmp ugt i64 %i.u, 1152921504606846975
  br i1 %i.v, label %.thread82, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = shl nuw nsw i64 %i.u, 3
  %i.x = call ptr @PyMem_Malloc(i64 noundef %i.w) #8 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread82, label %bb.o

.thread82:                                        ; preds = %bb.m, %bb.n
  %i.z = call ptr @PyErr_NoMemory() #8            ; 0 uses
  br label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.aa = call ptr @PyTuple_New(i64 noundef %i.u) #8 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread89, label %.preheader92

.preheader92:                                     ; preds = %bb.o
  %.not111 = icmp eq i64 %.058, 0
  br i1 %.not111, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader92
  %i.ac = getelementptr i8, ptr %1, i64 32
  %i.ad = getelementptr i8, ptr %i.aa, i64 32
  br label %bb.p

.thread89:                                        ; preds = %bb.o
  call void @PyMem_Free(ptr noundef nonnull %i.x) #8
  br label %Py_XDECREF.exit

.preheader:                                       ; preds = %bb.q, %.preheader92
  %i.ae = icmp slt i64 %.058, %i.u
  br i1 %i.ae, label %.lr.ph96, label %._crit_edge

.lr.ph96:                                         ; preds = %.preheader
  %i.af = getelementptr i8, ptr %i.aa, i64 32     ; 2 uses
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph, %bb.q
  %.05594 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.q ] ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %.05594
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !241
  %i.ai = call ptr @PySequence_Tuple(ptr noundef %i.ah) #8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread85, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr [8 x i8], ptr %i.ad, i64 %.05594
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !241
  %i.al = getelementptr [8 x i8], ptr %i.x, i64 %.05594
  store i64 0, ptr %i.al, align 8, !tbaa !286
  %i.am = add nuw nsw i64 %.05594, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %.058
  br i1 %exitcond.not, label %.preheader, label %bb.p, !llvm.loop !485

bb.r:                                             ; preds = %.lr.ph96, %Py_INCREF.exit
  %.15695 = phi i64 [ %.058, %.lr.ph96 ], [ %i.av, %Py_INCREF.exit ] ; 4 uses
  %i.an = sub nuw nsw i64 %.15695, %.058
  %i.ao = getelementptr [8 x i8], ptr %i.af, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !241 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !240 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %Py_INCREF.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !240
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.r, %bb.s
  %i.at = getelementptr [8 x i8], ptr %i.af, i64 %.15695
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !241
  %i.au = getelementptr [8 x i8], ptr %i.x, i64 %.15695
  store i64 0, ptr %i.au, align 8, !tbaa !286
  %i.av = add nuw nsw i64 %.15695, 1              ; 2 uses
  %exitcond97.not = icmp eq i64 %i.av, %i.u
  br i1 %exitcond97.not, label %._crit_edge, label %bb.r, !llvm.loop !486

._crit_edge:                                      ; preds = %Py_INCREF.exit, %.preheader
  %i.aw = getelementptr i8, ptr %0, i64 304
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !270
  %i.ay = call ptr %i.ax(ptr noundef %0, i64 noundef 0) #8 ; 6 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread85, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.aa, ptr %i.ba, align 8, !tbaa !347
  %i.bb = getelementptr i8, ptr %i.ay, i64 24
  store ptr %i.x, ptr %i.bb, align 8, !tbaa !349
  %i.bc = getelementptr i8, ptr %i.ay, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !348
  %i.bd = getelementptr i8, ptr %i.ay, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !350
  br label %Py_XDECREF.exit

.thread85:                                        ; preds = %bb.p, %._crit_edge
  call void @PyMem_Free(ptr noundef nonnull %i.x) #8
  %i.be = load i32, ptr %i.aa, align 8, !tbaa !240 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i.i, label %bb.u, label %Py_XDECREF.exit

bb.u:                                             ; preds = %.thread85
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.aa, align 8, !tbaa !240
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #8
  br label %Py_XDECREF.exit

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.v, %bb.u, %.thread85, %.thread82, %.thread89, %.critedge, %bb.t, %bb.l
  %.2 = phi ptr [ null, %bb.l ], [ null, %.critedge ], [ %i.ay, %bb.t ], [ null, %.thread89 ], [ null, %.thread82 ], [ null, %.thread85 ], [ null, %bb.u ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @product_sizeof(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !488 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !242
  %i.b = getelementptr i8, ptr %.val, i64 32
  %.val5 = load i64, ptr %i.b, align 8, !tbaa !303
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val4 = load i64, ptr %i.e, align 8, !tbaa !265
  %i.f = shl i64 %.val4, 3
  %i.g = add i64 %i.f, %.val5
  %i.h = tail call ptr @PyLong_FromSize_t(i64 noundef %i.g) #8
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @repeat_dealloc(ptr noundef %0) #0 !guid !489 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !242 ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352  ; 4 uses
  %.not.i7 = icmp eq ptr %i.c, null
  br i1 %.not.i7, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !240
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263
  tail call void %i.h(ptr noundef nonnull %0) #8
  %i.i = load i32, ptr %.val, align 8, !tbaa !240 ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.val, align 8, !tbaa !240
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @repeat_repr(ptr nofree noundef readonly captures(none) %0) #0 !guid !490 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !353
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.d, align 8, !tbaa !242
  %i.e = tail call ptr @_PyType_Name(ptr noundef %.val8) #8 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !352  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.46, ptr noundef %i.e, ptr noundef %i.g) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !353
  %i.j = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.108, ptr noundef %i.e, ptr noundef %i.g, i64 noundef %i.i) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @repeat_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 !guid !491 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !242 ; 2 uses
  %.not = icmp eq ptr %.val23, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val23, ptr noundef %2) #8 ; 2 uses
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352  ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #8 ; 2 uses
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @repeat_next(ptr nofree noundef captures(none) %0) #5 !guid !492 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !353  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.b
end_hunk_0
