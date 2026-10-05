Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Python-ast?download=true
inline.NumInlined: 1007
inline.NumDeleted: 32
begin_hunk_0_@ast2obj_comprehension:bb.a
  %i.ad = getelementptr i8, ptr %i.y, i64 8
  %i.ae = getelementptr i8, ptr %i.ab, i64 24
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.an, %bb.r ] ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %.022.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  %i.ai = tail call ptr @ast2obj_expr(ptr noundef nonnull %0, ptr noundef %i.ah) #9, !inline_history !110 ; 2 uses
  %.not21.i = icmp eq ptr %i.ai, null
  br i1 %.not21.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #9
  br label %.thread

bb.r:                                             ; preds = %bb.n
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !116
  %i.am = getelementptr [8 x i8], ptr %.val.i, i64 %.022.i
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !15
  %i.an = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.aa
  br i1 %exitcond.not.i, label %ast2obj_list.exit.thread71, label %bb.n, !llvm.loop !1

ast2obj_list.exit:                                ; preds = %Py_DECREF.exit56
  %i.ao = tail call ptr @PyList_New(i64 noundef 0) #9 ; 2 uses
  %.not51 = icmp eq ptr %i.ao, null
  br i1 %.not51, label %.thread, label %ast2obj_list.exit.thread71

ast2obj_list.exit.thread71:                       ; preds = %bb.r, %.preheader.i, %ast2obj_list.exit
  %.017.i74 = phi ptr [ %i.ao, %ast2obj_list.exit ], [ %i.ab, %.preheader.i ], [ %i.ab, %bb.r ] ; 5 uses
  %i.ap = getelementptr i8, ptr %0, i64 1504
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !317
  %i.ar = tail call i32 @PyObject_SetAttr(ptr noundef nonnull %i.d, ptr noundef %i.aq, ptr noundef nonnull %.017.i74) #9
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.z, label %bb.s

bb.s:                                             ; preds = %ast2obj_list.exit.thread71
  %i.at = load i32, ptr %.017.i74, align 8, !tbaa !16 ; 2 uses
  %.not.i53 = icmp sgt i32 %i.at, -1
  br i1 %.not.i53, label %bb.t, label %Py_DECREF.exit54

bb.t:                                             ; preds = %bb.s
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %.017.i74, align 8, !tbaa !16
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.u, label %Py_DECREF.exit54

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.017.i74) #9
  br label %Py_DECREF.exit54

Py_DECREF.exit54:                                 ; preds = %bb.s, %bb.t, %bb.u
  %i.aw = getelementptr i8, ptr %1, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !43
  %i.ay = sext i32 %i.ax to i64
  %i.az = tail call ptr @PyLong_FromLong(i64 noundef range(i64 -2147483648, 2147483648) %i.ay) #9 ; 6 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %.thread, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit54
  %i.ba = getelementptr i8, ptr %0, i64 1512
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !318
  %i.bc = tail call i32 @PyObject_SetAttr(ptr noundef nonnull %i.d, ptr noundef %i.bb, ptr noundef nonnull %i.az) #9
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = load i32, ptr %i.az, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.az, align 8, !tbaa !16
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.az) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.w, %bb.x, %bb.y
  tail call void @Py_LeaveRecursiveCall() #9
  br label %Py_XDECREF.exit67

.thread:                                          ; preds = %Py_DECREF.exit54, %ast2obj_list.exit, %Py_DECREF.exit58, %bb.d, %bb.q, %bb.m, %bb.o, %bb.p
  tail call void @Py_LeaveRecursiveCall() #9
  br label %Py_XDECREF.exit

bb.z:                                             ; preds = %bb.e, %bb.i, %ast2obj_list.exit.thread71, %bb.v
  %.0 = phi ptr [ %i.f, %bb.e ], [ %i.p, %bb.i ], [ %.017.i74, %ast2obj_list.exit.thread71 ], [ %i.az, %bb.v ] ; 3 uses
  tail call void @Py_LeaveRecursiveCall() #9
  %i.bh = load i32, ptr %.0, align 8, !tbaa !16   ; 2 uses
  %.not.i.i64 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i.i64, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %.0, align 8, !tbaa !16
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #9
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.ab, %bb.aa, %bb.z, %.thread
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %.not.i.i66 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i66, label %bb.ac, label %Py_XDECREF.exit67

bb.ac:                                            ; preds = %Py_XDECREF.exit
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.d, align 8, !tbaa !16
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ad, label %Py_XDECREF.exit67

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_XDECREF.exit67

Py_XDECREF.exit67:                                ; preds = %bb.ad, %bb.ac, %Py_XDECREF.exit, %bb.c, %bb.b, %bb.a, %Py_DECREF.exit
  %.037 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %bb.c ], [ %i.d, %Py_DECREF.exit ], [ null, %bb.b ], [ null, %Py_XDECREF.exit ], [ null, %bb.ac ], [ null, %bb.ad ]
  ret ptr %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @ast2obj_expr_context(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %_Py_NewRef.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 944
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !364  ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %_Py_NewRef.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !365  ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit, label %_Py_NewRef.exit.sink.split

bb.e:                                             ; preds = %bb.a
  unreachable

_Py_NewRef.exit.sink.split:                       ; preds = %bb.d, %bb.c, %bb.b
  %.sink10 = phi i32 [ %i.g, %bb.c ], [ %i.c, %bb.b ], [ %i.k, %bb.d ]
  %.sink9 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.m = add nuw i32 %.sink10, 1
  store i32 %i.m, ptr %.sink9, align 8, !tbaa !16
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %_Py_NewRef.exit.sink.split, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ %i.b, %bb.b ], [ %.sink9, %_Py_NewRef.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_Py_EnterRecursiveCall(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 952
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.d = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = icmp ule i64 %.val.i, %i.e
  %i.g = add i64 %.val.i, -32768
  %i.h = icmp ugt i64 %i.g, %i.e
  %narrow.i.not.i = or i1 %i.f, %i.h
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.b, ptr noundef %0) #9
  %i.i = icmp ne i32 %1, 0
  %i.j = zext i1 %i.i to i32
  br label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @obj2ast_stmt(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 485 uses
  %i.b = alloca i32, align 4                      ; 32 uses
  %i.c = alloca i32, align 4                      ; 32 uses
  %i.d = alloca i32, align 4                      ; 32 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  %i.w = alloca ptr, align 8                      ; 5 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %i.y = alloca ptr, align 8                      ; 6 uses
  %i.z = alloca ptr, align 8                      ; 5 uses
  %i.aa = alloca ptr, align 8                     ; 5 uses
  %i.ab = alloca ptr, align 8                     ; 6 uses
  %i.ac = alloca ptr, align 8                     ; 5 uses
  %i.ad = alloca ptr, align 8                     ; 5 uses
  %i.ae = alloca ptr, align 8                     ; 5 uses
  %i.af = alloca ptr, align 8                     ; 5 uses
  %i.ag = alloca ptr, align 8                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %i.ai = alloca ptr, align 8                     ; 5 uses
  %i.aj = alloca ptr, align 8                     ; 5 uses
  %i.ak = alloca ptr, align 8                     ; 5 uses
  %i.al = alloca ptr, align 8                     ; 6 uses
  %i.am = alloca i32, align 4                     ; 5 uses
  %i.an = alloca ptr, align 8                     ; 5 uses
  %i.ao = alloca ptr, align 8                     ; 5 uses
  %i.ap = alloca ptr, align 8                     ; 6 uses
  %i.aq = alloca ptr, align 8                     ; 5 uses
  %i.ar = alloca ptr, align 8                     ; 5 uses
  %i.as = alloca ptr, align 8                     ; 5 uses
  %i.at = alloca ptr, align 8                     ; 5 uses
  %i.au = alloca ptr, align 8                     ; 6 uses
  %i.av = alloca ptr, align 8                     ; 5 uses
  %i.aw = alloca ptr, align 8                     ; 5 uses
  %i.ax = alloca ptr, align 8                     ; 5 uses
  %i.ay = alloca ptr, align 8                     ; 5 uses
  %i.az = alloca ptr, align 8                     ; 5 uses
  %i.ba = alloca ptr, align 8                     ; 5 uses
  %i.bb = alloca ptr, align 8                     ; 5 uses
  %i.bc = alloca ptr, align 8                     ; 5 uses
  %i.bd = alloca ptr, align 8                     ; 6 uses
  %i.be = alloca ptr, align 8                     ; 5 uses
  %i.bf = alloca ptr, align 8                     ; 5 uses
  %i.bg = alloca ptr, align 8                     ; 6 uses
  %i.bh = alloca ptr, align 8                     ; 5 uses
  %i.bi = alloca ptr, align 8                     ; 5 uses
  %i.bj = alloca ptr, align 8                     ; 5 uses
  %i.bk = alloca ptr, align 8                     ; 5 uses
  %i.bl = alloca ptr, align 8                     ; 6 uses
  %i.bm = alloca ptr, align 8                     ; 6 uses
  %i.bn = alloca ptr, align 8                     ; 5 uses
  %i.bo = alloca ptr, align 8                     ; 5 uses
  %i.bp = alloca ptr, align 8                     ; 5 uses
  %i.bq = alloca ptr, align 8                     ; 5 uses
  %i.br = alloca ptr, align 8                     ; 5 uses
  %i.bs = alloca ptr, align 8                     ; 5 uses
  %i.bt = alloca ptr, align 8                     ; 5 uses
  %i.bu = alloca ptr, align 8                     ; 5 uses
  %i.bv = alloca ptr, align 8                     ; 5 uses
  %i.bw = alloca ptr, align 8                     ; 6 uses
  %i.bx = alloca i32, align 4                     ; 6 uses
  %i.by = alloca ptr, align 8                     ; 5 uses
  %i.bz = alloca ptr, align 8                     ; 6 uses
  %i.ca = alloca i32, align 4                     ; 6 uses
  %i.cb = alloca i32, align 4                     ; 6 uses
  %i.cc = alloca ptr, align 8                     ; 5 uses
  %i.cd = alloca ptr, align 8                     ; 5 uses
  %i.ce = alloca ptr, align 8                     ; 5 uses
  %i.cf = alloca ptr, align 8                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.cg = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.cg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !154
  br label %Py_DECREF.exit2878

bb.c:                                             ; preds = %bb.a
  %i.ch = getelementptr i8, ptr %0, i64 1640
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !156
  %i.cj = call i32 @PyObject_GetOptionalAttr(ptr noundef %1, ptr noundef %i.ci, ptr noundef nonnull %i.a) #9
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %Py_DECREF.exit2878, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.cn, ptr noundef nonnull @.str.431) #9
  br label %Py_DECREF.exit2878

bb.f:                                             ; preds = %bb.d
  %i.co = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate) ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !136 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 952
  %.val.i.i = load i64, ptr %i.cq, align 8, !tbaa !152 ; 2 uses
  %i.cr = call ptr @llvm.frameaddress.p0(i32 0)
  %i.cs = ptrtoint ptr %i.cr to i64               ; 4 uses
  %i.ct = icmp ule i64 %.val.i.i, %i.cs
  %i.cu = add i64 %.val.i.i, -32768
  %i.cv = icmp ugt i64 %i.cu, %i.cs
  %narrow.i.not.i.i = or i1 %i.ct, %i.cv
  br i1 %narrow.i.not.i.i, label %_Py_EnterRecursiveCall.exit.thread, label %_Py_EnterRecursiveCall.exit

_Py_EnterRecursiveCall.exit:                      ; preds = %bb.f
  %i.cw = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.432) #9
  %.not3942 = icmp eq i32 %i.cw, 0
  br i1 %.not3942, label %_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge, label %Py_DECREF.exit2966

_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge: ; preds = %_Py_EnterRecursiveCall.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %_Py_EnterRecursiveCall.exit.thread

_Py_EnterRecursiveCall.exit.thread:               ; preds = %_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge, %bb.f
  %i.cx = phi ptr [ %.pre, %_Py_EnterRecursiveCall.exit._Py_EnterRecursiveCall.exit.thread_crit_edge ], [ %i.cl, %bb.f ] ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %.val.i = load ptr, ptr %i.cy, align 8, !tbaa !127
  %i.cz = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.cz, align 8, !tbaa !133
  %i.da = and i64 %.val7.i, 16777216
  %.not.i3303 = icmp eq i64 %i.da, 0
  br i1 %.not.i3303, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Py_EnterRecursiveCall.exit.thread
  %i.db = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  %i.dc = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.db, ptr noundef nonnull @.str.561, ptr noundef nonnull %i.cx) #9 ; 0 uses
  br label %Py_DECREF.exit2966

bb.h:                                             ; preds = %_Py_EnterRecursiveCall.exit.thread
  %i.dd = call i32 @PyLong_AsInt(ptr noundef nonnull %i.cx) #9 ; 30 uses
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.i, label %obj2ast_int.exit

bb.i:                                             ; preds = %bb.h
  %i.df = call ptr @PyErr_Occurred() #9
  %.not6.i = icmp eq ptr %i.df, null
  br i1 %.not6.i, label %obj2ast_int.exit, label %Py_DECREF.exit2966

obj2ast_int.exit:                                 ; preds = %bb.i, %bb.h
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %.not2255 = icmp eq ptr %i.dg, null
  br i1 %.not2255, label %bb.m, label %bb.j

bb.j:                                             ; preds = %obj2ast_int.exit
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !16 ; 2 uses
  %.not.i2965 = icmp sgt i32 %i.dh, -1
  br i1 %.not.i2965, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !16
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.dg) #9
  br label %bb.m

bb.m:                                             ; preds = %obj2ast_int.exit, %bb.j, %bb.k, %bb.l
  %i.dk = getelementptr i8, ptr %0, i64 1312
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !297
  %i.dm = call i32 @PyObject_GetOptionalAttr(ptr noundef %1, ptr noundef %i.dl, ptr noundef nonnull %i.a) #9
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %Py_DECREF.exit2878, label %bb.n

end_hunk_0
