inline.NumInlined: 191
inline.NumDeleted: 43
begin_hunk_0_@encoder_encode_stateful:bb.a
bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !20
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.t, label %Py_XDECREF.exit91

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #7
  br label %Py_XDECREF.exit91

bb.u:                                             ; preds = %_Py_NewRef.exit81
  br i1 %.not65, label %Py_XDECREF.exit85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = load i32, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.not.i.i84 = icmp sgt i32 %i.at, -1
  br i1 %.not.i.i84, label %bb.w, label %Py_XDECREF.exit85

bb.w:                                             ; preds = %bb.v
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.p, align 8, !tbaa !20
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.x, label %Py_XDECREF.exit85

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #7
  br label %Py_XDECREF.exit85

Py_XDECREF.exit85:                                ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.ax = icmp slt i64 %i.aw, %.1.val
  br i1 %i.ax, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %Py_XDECREF.exit85
  %i.ay = sub i64 %.1.val, %i.aw
  %i.az = icmp sgt i64 %i.ay, 2
  br i1 %i.az, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ba = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !21
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !84
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bd = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.ba, ptr noundef nonnull @.str.26, ptr noundef %i.bc, ptr noundef nonnull %.1, i64 noundef %i.aw, i64 noundef %.1.val, ptr noundef nonnull @.str.39) #7 ; 5 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %Py_XDECREF.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !21
  call void @PyErr_SetObject(ptr noundef %i.bf, ptr noundef nonnull %i.bd) #7
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !20 ; 2 uses
  %.not.i68 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i68, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !20
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %Py_XDECREF.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.bd) #7
  br label %Py_XDECREF.exit

bb.ad:                                            ; preds = %bb.y
  %i.bj = call ptr @PyUnicode_Substring(ptr noundef nonnull %.1, i64 noundef %i.aw, i64 noundef %.1.val) #7 ; 2 uses
  store ptr %i.bj, ptr %i.o, align 8, !tbaa !85
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %Py_XDECREF.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %Py_XDECREF.exit85
  %i.bl = load i32, ptr %.1, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp sgt i32 %i.bl, -1
  br i1 %.not.i, label %bb.af, label %Py_DECREF.exit

bb.af:                                            ; preds = %bb.ae
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %.1, align 8, !tbaa !20
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ag, label %Py_DECREF.exit

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %.1) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ae, %bb.af, %bb.ag
  %.not.i86 = icmp eq ptr %.050, null
  br i1 %.not.i86, label %Py_DECREF.exit73, label %bb.ah

bb.ah:                                            ; preds = %Py_DECREF.exit
  %i.bo = load i32, ptr %.050, align 8, !tbaa !20 ; 2 uses
  %.not.i.i87 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i87, label %bb.ai, label %Py_DECREF.exit73

bb.ai:                                            ; preds = %bb.ah
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %.050, align 8, !tbaa !20
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.aj, label %Py_DECREF.exit73

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %.050) #7
  br label %Py_DECREF.exit73

Py_XDECREF.exit:                                  ; preds = %bb.ad, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.br = load i32, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %.not.i.i90 = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i90, label %bb.ak, label %Py_XDECREF.exit91

bb.ak:                                            ; preds = %Py_XDECREF.exit
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.an, align 8, !tbaa !20
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.al, label %Py_XDECREF.exit91

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #7
  br label %Py_XDECREF.exit91

Py_XDECREF.exit91:                                ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.t, %Py_XDECREF.exit, %bb.ak, %bb.al
  %.2108 = phi ptr [ %.1, %bb.ak ], [ %.1, %bb.al ], [ %.1, %Py_XDECREF.exit ], [ %.1, %bb.s ], [ %.1, %bb.r ], [ %.1, %bb.q ], [ null, %bb.n ], [ %.1, %bb.t ] ; 4 uses
  %.156107 = phi ptr [ %i.p, %bb.ak ], [ %i.p, %bb.al ], [ %i.p, %Py_XDECREF.exit ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.q ], [ %i.p, %bb.n ], [ null, %bb.t ] ; 4 uses
  %.not.i92 = icmp eq ptr %.050, null
  br i1 %.not.i92, label %Py_XDECREF.exit94, label %bb.am

bb.am:                                            ; preds = %Py_XDECREF.exit91
  %i.bu = load i32, ptr %.050, align 8, !tbaa !20 ; 2 uses
  %.not.i.i93 = icmp sgt i32 %i.bu, -1
  br i1 %.not.i.i93, label %bb.an, label %Py_XDECREF.exit94

bb.an:                                            ; preds = %bb.am
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %.050, align 8, !tbaa !20
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ao, label %Py_XDECREF.exit94

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %.050) #7
  br label %Py_XDECREF.exit94

Py_XDECREF.exit94:                                ; preds = %Py_XDECREF.exit91, %bb.am, %bb.an, %bb.ao
  %.not.i95 = icmp eq ptr %.156107, null
  br i1 %.not.i95, label %Py_XDECREF.exit97, label %bb.ap

bb.ap:                                            ; preds = %Py_XDECREF.exit94
  %i.bx = load i32, ptr %.156107, align 8, !tbaa !20 ; 2 uses
  %.not.i.i96 = icmp sgt i32 %i.bx, -1
  br i1 %.not.i.i96, label %bb.aq, label %Py_XDECREF.exit97

bb.aq:                                            ; preds = %bb.ap
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %.156107, align 8, !tbaa !20
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ar, label %Py_XDECREF.exit97

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %.156107) #7
  br label %Py_XDECREF.exit97

Py_XDECREF.exit97:                                ; preds = %Py_XDECREF.exit94, %bb.ap, %bb.aq, %bb.ar
  %.not.i98 = icmp eq ptr %.2108, null
  br i1 %.not.i98, label %Py_DECREF.exit73, label %bb.as

bb.as:                                            ; preds = %Py_XDECREF.exit97
  %i.ca = load i32, ptr %.2108, align 8, !tbaa !20 ; 2 uses
  %.not.i.i99 = icmp sgt i32 %i.ca, -1
  br i1 %.not.i.i99, label %bb.at, label %Py_DECREF.exit73

bb.at:                                            ; preds = %bb.as
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %.2108, align 8, !tbaa !20
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.au, label %Py_DECREF.exit73

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %.2108) #7
  br label %Py_DECREF.exit73

Py_DECREF.exit73:                                 ; preds = %bb.au, %bb.at, %bb.as, %Py_XDECREF.exit97, %bb.aj, %bb.ai, %bb.ah, %Py_DECREF.exit, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.an, %bb.aj ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.e ], [ %i.an, %Py_DECREF.exit ], [ %i.an, %bb.ah ], [ %i.an, %bb.ai ], [ null, %Py_XDECREF.exit97 ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

declare void @PyUnicode_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_PyLong_FromByteArray(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyLong_AsByteArray(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeUTF8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @codecctx_errors_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %magicptr9 = ptrtoint ptr %i.b to i64
  %switch.tableidx = add i64 %magicptr9, -1       ; 2 uses
  %i.c = icmp ult i64 %switch.tableidx, 3
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.b, align 8, !tbaa !20
  br label %_Py_NewRef.exit

switch.lookup:                                    ; preds = %bb.a
  %switch.gep.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table.codecctx_errors_get, i64 %switch.tableidx
  %switch.load = load ptr, ptr %switch.gep.a, align 8
  %i.g = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %switch.load) #7
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %switch.lookup
  %.0 = phi ptr [ %i.g, %switch.lookup ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @codecctx_errors_set(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.44) #7
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val18 = load i64, ptr %i.d, align 8, !tbaa !45
  %i.e = and i64 %.val18, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.45) #7
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %1) #7 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(7) @.str.19) #8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %internal_error_callback.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(7) @.str.20) #8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %internal_error_callback.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(8) @.str.21) #8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %internal_error_callback.exit.thread, label %internal_error_callback.exit

internal_error_callback.exit:                     ; preds = %bb.h
  %i.o = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.g) #7 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %internal_error_callback.exit.thread

internal_error_callback.exit.thread:              ; preds = %bb.f, %bb.g, %bb.h, %internal_error_callback.exit
  %.0.i20 = phi ptr [ %i.o, %internal_error_callback.exit ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 2 to ptr), %bb.g ], [ inttoptr (i64 3 to ptr), %bb.h ]
  %i.q = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !87   ; 6 uses
  %.not17 = icmp eq ptr %i.r, null
  br i1 %.not17, label %Py_DECREF.exit, label %bb.i

bb.i:                                             ; preds = %internal_error_callback.exit.thread
  %i.s = icmp ult ptr %i.r, inttoptr (i64 1 to ptr)
  %i.t = icmp ugt ptr %i.r, inttoptr (i64 3 to ptr)
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.r, align 8, !tbaa !20
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %internal_error_callback.exit.thread
  store ptr %.0.i20, ptr %i.q, align 8, !tbaa !87
  br label %bb.m

bb.m:                                             ; preds = %internal_error_callback.exit, %bb.e, %Py_DECREF.exit, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ 0, %Py_DECREF.exit ], [ -1, %internal_error_callback.exit ]
  ret i32 %.0
}

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @mbidecoder_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !35  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #7
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Py_DECREF.exit11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %i.c, inttoptr (i64 1 to ptr)
  %i.e = icmp ugt ptr %i.c, inttoptr (i64 3 to ptr)
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %Py_DECREF.exit11

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not.i10 = icmp sgt i32 %i.f, -1
  br i1 %.not.i10, label %bb.d, label %Py_DECREF.exit11

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !20
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit11

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #7
  br label %Py_DECREF.exit11

Py_DECREF.exit11:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  tail call void %i.j(ptr noundef nonnull %0) #7
  %i.k = load i32, ptr %.val, align 8, !tbaa !20  ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %Py_DECREF.exit11
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %.val, align 8, !tbaa !20
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit11, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mbidecoder_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 4 uses
  %i.c = icmp uge ptr %i.b, inttoptr (i64 1 to ptr)
  %i.d = icmp ule ptr %i.b, inttoptr (i64 3 to ptr)
  %or.cond.not17 = and i1 %i.c, %i.d
  %.not = icmp eq ptr %i.b, null
  %or.cond14 = or i1 %.not, %or.cond.not17
  br i1 %or.cond14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #7 ; 2 uses
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.e, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @mbidecoder_init(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @mbidecoder_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !81
  %i.b = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef nonnull @incnewkwarglist, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = call ptr %i.d(ptr noundef %0, i64 noundef 0) #7 ; 12 uses
end_hunk_0
