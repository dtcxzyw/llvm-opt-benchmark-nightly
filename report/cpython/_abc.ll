inline.NumInlined: 89
inline.NumDeleted: 29
begin_hunk_0_@_abc__abc_instancecheck:bb.a

; Function Attrs: nounwind uwtable
define internal ptr @_abc__abc_subclasscheck(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.8, i64 noundef %2, i64 noundef 2, i64 noundef 2) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_abc__abc_subclasscheck_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 12 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val110.i = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr i8, ptr %.val110.i, i64 168
  %.val110.val.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.i = and i64 %.val110.val.i, 2147483648
  %.not145.i = icmp eq i64 %i.i, 0
  br i1 %.not145.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.20) #4
  br label %_abc__abc_subclasscheck_impl.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val111.i = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.l = tail call ptr @PyObject_GetAttr(ptr noundef %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71472)) #4 ; 12 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_Py_XNewRef.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %.val111.i, align 8, !tbaa !19
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val9.i.i = load ptr, ptr %i.o, align 8, !tbaa !31
  %.not.i116.i = icmp eq ptr %.val9.i.i, %i.n
  br i1 %.not.i116.i, label %_get_impl.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.14) #4
  %i.q = load i32, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i.i, label %bb.h, label %_Py_XNewRef.exit.i

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.l, align 8, !tbaa !22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %_Py_XNewRef.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #4
  br label %_Py_XNewRef.exit.i

_get_impl.exit.i:                                 ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.l, i64 24       ; 4 uses
  %.val113.i = load ptr, ptr %i.t, align 8, !tbaa !30 ; 3 uses
  %i.u = icmp eq ptr %.val113.i, null
  br i1 %i.u, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %_get_impl.exit.i
  %i.v = getelementptr i8, ptr %.val113.i, i64 24
  %.val.i.i = load i64, ptr %i.v, align 8, !tbaa !59
  %i.w = icmp eq i64 %.val.i.i, 0
  br i1 %i.w, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @PyWeakref_NewRef(ptr noundef nonnull %i.f, ptr noundef null) #4 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  %i.aa = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.z) #4
  %.not.i118.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i118.i, label %_in_weak_set.exit.thread130.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @PyErr_Clear() #4
  br label %.thread.i

bb.n:                                             ; preds = %bb.k
  %i.ab = tail call i32 @PySet_Contains(ptr noundef nonnull %.val113.i, ptr noundef nonnull %i.x) #4 ; 2 uses
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %.not.i.i117.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i117.i, label %bb.o, label %_in_weak_set.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.x, align 8, !tbaa !22
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %_in_weak_set.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #4
  br label %_in_weak_set.exit.i

_in_weak_set.exit.i:                              ; preds = %bb.p, %bb.o, %bb.n
  %i.af = icmp slt i32 %i.ab, 0
  br i1 %i.af, label %_in_weak_set.exit.thread130.i, label %bb.q

bb.q:                                             ; preds = %_in_weak_set.exit.i
  %.not84.i = icmp eq i32 %i.ab, 0
  br i1 %.not84.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @_Py_TrueStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

.thread.i:                                        ; preds = %bb.q, %bb.m, %bb.j, %_get_impl.exit.i
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.ag = getelementptr i8, ptr %.val.i, i64 8
  %.val108.i = load i64, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 40      ; 2 uses
  %.val114.i = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.ai = icmp ult i64 %.val114.i, %.val108.i
  %i.aj = getelementptr i8, ptr %i.l, i64 32      ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 4 uses
  %.not86.i = icmp eq ptr %i.ak, null             ; 2 uses
  br i1 %i.ai, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread.i
  br i1 %.not86.i, label %.thread134.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = tail call i32 @PySet_Clear(ptr noundef nonnull %i.ak) #4
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_in_weak_set.exit.thread130.i, label %.thread134.i

.thread134.i:                                     ; preds = %bb.t, %bb.s
  store i64 %.val108.i, ptr %i.ah, align 8, !tbaa !54
  br label %.thread140.i

bb.u:                                             ; preds = %.thread.i
  br i1 %.not86.i, label %.thread140.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = getelementptr i8, ptr %i.ak, i64 24
  %.val.i119.i = load i64, ptr %i.an, align 8, !tbaa !59
  %i.ao = icmp eq i64 %.val.i119.i, 0
  br i1 %i.ao, label %.thread140.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = tail call ptr @PyWeakref_NewRef(ptr noundef nonnull %i.f, ptr noundef null) #4 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  %i.as = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.ar) #4
  %.not.i122.i = icmp eq i32 %i.as, 0
  br i1 %.not.i122.i, label %_in_weak_set.exit.thread130.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @PyErr_Clear() #4
  br label %.thread140.i

bb.z:                                             ; preds = %bb.w
  %i.at = tail call i32 @PySet_Contains(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ap) #4 ; 2 uses
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %.not.i.i120.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i120.i, label %bb.aa, label %_in_weak_set.exit123.i

bb.aa:                                            ; preds = %bb.z
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.ap, align 8, !tbaa !22
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.ab, label %_in_weak_set.exit123.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #4
  br label %_in_weak_set.exit123.i

_in_weak_set.exit123.i:                           ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ax = icmp slt i32 %i.at, 0
  br i1 %i.ax, label %_in_weak_set.exit.thread130.i, label %bb.ac

bb.ac:                                            ; preds = %_in_weak_set.exit123.i
  %.not85.i = icmp eq i32 %i.at, 0
  br i1 %.not85.i, label %.thread140.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr @_Py_FalseStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

.thread140.i:                                     ; preds = %bb.ac, %bb.y, %bb.v, %bb.u, %.thread134.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr %i.d, ptr %i.a, align 16, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.ay, align 8, !tbaa !30
  %i.az = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70720), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #4 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_in_weak_set.exit.thread130.i, label %bb.ae

bb.ae:                                            ; preds = %.thread140.i
  %i.bb = icmp eq ptr %i.az, @_Py_TrueStruct
  br i1 %i.bb, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.bc = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !22 ; 2 uses
  %.not.i100.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i100.i, label %bb.ag, label %Py_DECREF.exit101.i

bb.ag:                                            ; preds = %bb.af
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr @_Py_TrueStruct, align 8, !tbaa !22
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ah, label %Py_DECREF.exit101.i

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_TrueStruct) #4
  br label %Py_DECREF.exit101.i

Py_DECREF.exit101.i:                              ; preds = %bb.ah, %bb.ag, %bb.af
  %i.bf = call fastcc i32 @_add_to_weak_set(ptr noundef nonnull %i.t, ptr noundef nonnull %i.f)
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %_in_weak_set.exit.thread130.i, label %bb.ai

bb.ai:                                            ; preds = %Py_DECREF.exit101.i
  store ptr @_Py_TrueStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

bb.aj:                                            ; preds = %bb.ae
  %i.bh = icmp eq ptr %i.az, @_Py_FalseStruct
  br i1 %i.bh, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.bi = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !22 ; 2 uses
  %.not.i98.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i98.i, label %bb.al, label %Py_DECREF.exit99.i

bb.al:                                            ; preds = %bb.ak
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr @_Py_FalseStruct, align 8, !tbaa !22
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.am, label %Py_DECREF.exit99.i

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_FalseStruct) #4
  br label %Py_DECREF.exit99.i

Py_DECREF.exit99.i:                               ; preds = %bb.am, %bb.al, %bb.ak
  %i.bl = call fastcc i32 @_add_to_weak_set(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.f)
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %_in_weak_set.exit.thread130.i, label %bb.an

bb.an:                                            ; preds = %Py_DECREF.exit99.i
  store ptr @_Py_FalseStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

bb.ao:                                            ; preds = %bb.aj
  %.not87.i = icmp eq ptr %i.az, @_Py_NotImplementedStruct
  br i1 %.not87.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %3 = load i32, ptr %i.az, align 8, !tbaa !22    ; 2 uses
  %.not.i96.i = icmp sgt i32 %3, -1
  br i1 %.not.i96.i, label %bb.aq, label %Py_DECREF.exit97.i

bb.aq:                                            ; preds = %bb.ap
  %i.bn = add nsw i32 %3, -1                      ; 2 uses
  store i32 %i.bn, ptr %i.az, align 8, !tbaa !22
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ar, label %Py_DECREF.exit97.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.az) #4
  br label %Py_DECREF.exit97.i

Py_DECREF.exit97.i:                               ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.bp = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !30
  call void @PyErr_SetString(ptr noundef %i.bp, ptr noundef nonnull @.str.21) #4
  br label %_in_weak_set.exit.thread130.i

bb.as:                                            ; preds = %bb.ao
  %4 = load i32, ptr @_Py_NotImplementedStruct, align 8, !tbaa !22 ; 2 uses
  %.not.i94.i = icmp sgt i32 %4, -1
  br i1 %.not.i94.i, label %bb.at, label %Py_DECREF.exit95.i

bb.at:                                            ; preds = %bb.as
  %i.bq = add nsw i32 %4, -1                      ; 2 uses
  store i32 %i.bq, ptr @_Py_NotImplementedStruct, align 8, !tbaa !22
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.au, label %Py_DECREF.exit95.i

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NotImplementedStruct) #4
  br label %Py_DECREF.exit95.i

Py_DECREF.exit95.i:                               ; preds = %bb.au, %bb.at, %bb.as
  %i.bs = call i32 @PyType_IsSubtype(ptr noundef nonnull %i.f, ptr noundef %i.d) #4
  %.not88.i = icmp eq i32 %i.bs, 0
  br i1 %.not88.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %Py_DECREF.exit95.i
  %i.bt = call fastcc i32 @_add_to_weak_set(ptr noundef nonnull %i.t, ptr noundef nonnull %i.f)
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %_in_weak_set.exit.thread130.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr @_Py_TrueStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

bb.ax:                                            ; preds = %Py_DECREF.exit95.i
  %i.bv = call fastcc i32 @subclasscheck_check_registry(ptr noundef %i.l, ptr noundef nonnull %i.f, ptr noundef %i.b)
  %.not89.i = icmp eq i32 %i.bv, 0
  br i1 %.not89.i, label %bb.ay, label %_in_weak_set.exit.thread130.i

bb.ay:                                            ; preds = %bb.ax
  %i.bw = call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %i.d, ptr noundef nonnull @.str.22, ptr noundef null) #4 ; 11 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_in_weak_set.exit.thread130.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  %.val107.i = load ptr, ptr %i.by, align 8, !tbaa !31
  %i.bz = getelementptr i8, ptr %.val107.i, i64 168
  %.val109.i = load i64, ptr %i.bz, align 8, !tbaa !32
  %i.ca = and i64 %.val109.i, 33554432
  %.not90.i = icmp eq i64 %i.ca, 0
  br i1 %.not90.i, label %bb.ba, label %.preheader.i

.preheader.i:                                     ; preds = %bb.az
  %i.cb = getelementptr i8, ptr %i.bw, i64 16     ; 2 uses
  %.val115146.i = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.cc = icmp sgt i64 %.val115146.i, 0
  br i1 %i.cc, label %.lr.ph.i, label %._crit_edge.i

bb.ba:                                            ; preds = %bb.az
  %i.cd = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  call void @PyErr_SetString(ptr noundef %i.cd, ptr noundef nonnull @.str.23) #4
  br label %_in_weak_set.exit.thread130.i

bb.bb:                                            ; preds = %bb.bh
  %i.ce = add nuw nsw i64 %.072147.i, 1           ; 2 uses
  %.val115.i = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.cf = icmp slt i64 %i.ce, %.val115.i
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !61

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bb
  %.072147.i = phi i64 [ %i.ce, %bb.bb ], [ 0, %.preheader.i ] ; 2 uses
  %i.cg = call ptr @PyList_GetItemRef(ptr noundef nonnull %i.bw, i64 noundef %.072147.i) #4 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_in_weak_set.exit.thread130.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i
  %i.ci = call i32 @PyObject_IsSubclass(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cg) #4 ; 2 uses
  %i.cj = load i32, ptr %i.cg, align 8, !tbaa !22 ; 2 uses
  %.not.i92.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i92.i, label %bb.bd, label %Py_DECREF.exit93.i

bb.bd:                                            ; preds = %bb.bc
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.cg, align 8, !tbaa !22
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.be, label %Py_DECREF.exit93.i

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #4
  br label %Py_DECREF.exit93.i

Py_DECREF.exit93.i:                               ; preds = %bb.be, %bb.bd, %bb.bc
  %i.cm = icmp sgt i32 %i.ci, 0
  br i1 %i.cm, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %Py_DECREF.exit93.i
  %i.cn = call fastcc i32 @_add_to_weak_set(ptr noundef nonnull %i.t, ptr noundef nonnull %i.f)
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %_in_weak_set.exit.thread130.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr @_Py_TrueStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

bb.bh:                                            ; preds = %Py_DECREF.exit93.i
  %i.cp = icmp slt i32 %i.ci, 0
  br i1 %i.cp, label %_in_weak_set.exit.thread130.i, label %bb.bb

._crit_edge.i:                                    ; preds = %bb.bb, %.preheader.i
  %i.cq = call fastcc i32 @_add_to_weak_set(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.f)
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %_in_weak_set.exit.thread130.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i
  store ptr @_Py_FalseStruct, ptr %i.b, align 8, !tbaa !30
  br label %_in_weak_set.exit.thread130.i

_in_weak_set.exit.thread130.i:                    ; preds = %bb.bh, %.lr.ph.i, %bb.bi, %._crit_edge.i, %bb.bg, %bb.bf, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.av, %Py_DECREF.exit97.i, %bb.an, %Py_DECREF.exit99.i, %bb.ai, %Py_DECREF.exit101.i, %.thread140.i, %bb.ad, %_in_weak_set.exit123.i, %bb.x, %bb.t, %bb.r, %_in_weak_set.exit.i, %bb.l
  %.073.i = phi ptr [ null, %_in_weak_set.exit.i ], [ null, %bb.r ], [ null, %.thread140.i ], [ null, %Py_DECREF.exit101.i ], [ null, %bb.ai ], [ null, %Py_DECREF.exit99.i ], [ null, %bb.an ], [ null, %Py_DECREF.exit97.i ], [ null, %bb.av ], [ null, %bb.aw ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.x ], [ %i.bw, %._crit_edge.i ], [ %i.bw, %bb.bi ], [ %i.bw, %bb.ba ], [ null, %bb.l ], [ null, %_in_weak_set.exit123.i ], [ null, %bb.ad ], [ null, %bb.t ], [ %i.bw, %bb.bg ], [ %i.bw, %bb.bf ], [ %i.bw, %.lr.ph.i ], [ %i.bw, %bb.bh ] ; 4 uses
  %i.cs = load i32, ptr %i.l, align 8, !tbaa !22  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cs, -1
  br i1 %.not.i.i, label %bb.bj, label %Py_DECREF.exit.i

bb.bj:                                            ; preds = %_in_weak_set.exit.thread130.i
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %i.l, align 8, !tbaa !22
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.bk, label %Py_DECREF.exit.i

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.bk, %bb.bj, %_in_weak_set.exit.thread130.i
  %.not.i124.i = icmp eq ptr %.073.i, null
  br i1 %.not.i124.i, label %Py_XDECREF.exit.i, label %bb.bl

bb.bl:                                            ; preds = %Py_DECREF.exit.i
  %i.cv = load i32, ptr %.073.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i125.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i.i125.i, label %bb.bm, label %Py_XDECREF.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %.073.i, align 8, !tbaa !22
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.bn, label %Py_XDECREF.exit.i

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %.073.i) #4
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.bn, %bb.bm, %bb.bl, %Py_DECREF.exit.i
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !30  ; 5 uses
  %.not.i.i126.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i126.i, label %_Py_XNewRef.exit.i, label %bb.bo

bb.bo:                                            ; preds = %Py_XDECREF.exit.i
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !22 ; 2 uses
  %i.da = icmp ugt i32 %i.cz, -1073741825
  br i1 %i.da, label %_Py_XNewRef.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.db = add nuw i32 %i.cz, 1
  store i32 %i.db, ptr %i.cy, align 8, !tbaa !22
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.bp, %bb.bo, %Py_XDECREF.exit.i, %bb.i, %bb.h, %bb.g, %bb.e
  %.0.i = phi ptr [ %i.cy, %bb.bp ], [ null, %Py_XDECREF.exit.i ], [ %i.cy, %bb.bo ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_abc__abc_subclasscheck_impl.exit

_abc__abc_subclasscheck_impl.exit:                ; preds = %_Py_XNewRef.exit.i, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.0.i, %_Py_XNewRef.exit.i ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyLong_FromUnsignedLongLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal ptr @abc_data_new(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #4 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 888
  %.val = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.g = icmp eq ptr %.val.val, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #4
  br label %Py_DECREF.exit

end_hunk_0
