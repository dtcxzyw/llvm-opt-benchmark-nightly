inline.NumInlined: 206
inline.NumDeleted: 58
begin_hunk_0_@get_code_var_counts:bb.a
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.ee, label %Py_XDECREF.exit389

bb.ee:                                            ; preds = %bb.ed
  call void @_Py_Dealloc(ptr noundef nonnull %.0181) #13
  br label %Py_XDECREF.exit389

Py_XDECREF.exit389:                               ; preds = %Py_XDECREF.exit386, %bb.ec, %bb.ed, %bb.ee
  %.not.i390 = icmp eq ptr %.0182, null
  br i1 %.not.i390, label %Py_XDECREF.exit392, label %bb.ef

bb.ef:                                            ; preds = %Py_XDECREF.exit389
  %i.lc = load i32, ptr %.0182, align 8, !tbaa !16 ; 2 uses
  %.not.i.i391 = icmp sgt i32 %i.lc, -1
  br i1 %.not.i.i391, label %bb.eg, label %Py_XDECREF.exit392

bb.eg:                                            ; preds = %bb.ef
  %i.ld = add nsw i32 %i.lc, -1                   ; 2 uses
  store i32 %i.ld, ptr %.0182, align 8, !tbaa !16
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.eh, label %Py_XDECREF.exit392

bb.eh:                                            ; preds = %bb.eg
  call void @_Py_Dealloc(ptr noundef nonnull %.0182) #13
  br label %Py_XDECREF.exit392

Py_XDECREF.exit392:                               ; preds = %Py_XDECREF.exit389, %bb.ef, %bb.eg, %bb.eh
  %.not.i393 = icmp eq ptr %.0183, null
  br i1 %.not.i393, label %Py_XDECREF.exit395, label %bb.ei

bb.ei:                                            ; preds = %Py_XDECREF.exit392
  %i.lf = load i32, ptr %.0183, align 8, !tbaa !16 ; 2 uses
  %.not.i.i394 = icmp sgt i32 %i.lf, -1
  br i1 %.not.i.i394, label %bb.ej, label %Py_XDECREF.exit395

bb.ej:                                            ; preds = %bb.ei
  %i.lg = add nsw i32 %i.lf, -1                   ; 2 uses
  store i32 %i.lg, ptr %.0183, align 8, !tbaa !16
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.ek, label %Py_XDECREF.exit395

bb.ek:                                            ; preds = %bb.ej
  call void @_Py_Dealloc(ptr noundef nonnull %.0183) #13
  br label %Py_XDECREF.exit395

Py_XDECREF.exit395:                               ; preds = %Py_XDECREF.exit392, %bb.ei, %bb.ej, %bb.ek
  %.not.i396 = icmp eq ptr %.0184, null
  br i1 %.not.i396, label %Py_DECREF.exit291, label %bb.el

bb.el:                                            ; preds = %Py_XDECREF.exit395
  %i.li = load i32, ptr %.0184, align 8, !tbaa !16 ; 2 uses
  %.not.i.i397 = icmp sgt i32 %i.li, -1
  br i1 %.not.i.i397, label %bb.em, label %Py_DECREF.exit291

bb.em:                                            ; preds = %bb.el
  %i.lj = add nsw i32 %i.li, -1                   ; 2 uses
  store i32 %i.lj, ptr %.0184, align 8, !tbaa !16
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %Py_DECREF.exit291.sink.split, label %Py_DECREF.exit291

Py_DECREF.exit291.sink.split:                     ; preds = %bb.em, %bb.dt
  %.0184.sink = phi ptr [ %i.ig, %bb.dt ], [ %.0184, %bb.em ]
  %.1.ph = phi ptr [ %i.ad, %bb.dt ], [ null, %bb.em ]
  call void @_Py_Dealloc(ptr noundef nonnull %.0184.sink) #13
  br label %Py_DECREF.exit291

Py_DECREF.exit291:                                ; preds = %Py_DECREF.exit291.sink.split, %bb.em, %bb.el, %Py_XDECREF.exit395, %bb.dt, %Py_DECREF.exit293, %bb.h, %bb.g
  %.1 = phi ptr [ null, %bb.g ], [ null, %bb.em ], [ null, %bb.h ], [ %i.ad, %Py_DECREF.exit293 ], [ %i.ad, %bb.dt ], [ null, %Py_XDECREF.exit395 ], [ null, %bb.el ], [ %.1.ph, %Py_DECREF.exit291.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.en

bb.en:                                            ; preds = %bb.a, %Py_DECREF.exit291, %bb.f
  %.2 = phi ptr [ %.1, %Py_DECREF.exit291 ], [ null, %bb.f ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @verify_stateless_code(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = tail call ptr @_PyThreadState_GetCurrent() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !15
  %i.f = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.273, ptr noundef nonnull @verify_stateless_code.kwlist, ptr noundef nonnull %i.a, ptr noundef nonnull @PySet_Type, ptr noundef nonnull %i.b, ptr noundef nonnull @PyDict_Type, ptr noundef nonnull %i.c, ptr noundef nonnull @PyDict_Type, ptr noundef nonnull %i.d) #13
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val7 = load ptr, ptr %i.h, align 8, !tbaa !41 ; 2 uses
  %.not14 = icmp eq ptr %.val7, @PyFunction_Type
  br i1 %.not14, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_PyFunction_GET_BUILTINS.exit, label %PyFunction_GET_CODE.exit

.thread:                                          ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !163  ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !15
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_PyFunction_GET_BUILTINS.exit, label %PyFunction_GET_CODE.exit

_PyFunction_GET_BUILTINS.exit:                    ; preds = %bb.d, %.thread
  %i.q = phi ptr [ %i.i, %bb.d ], [ %i.n, %.thread ]
  %i.r = getelementptr i8, ptr %i.g, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165  ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !15
  br label %PyFunction_GET_CODE.exit

PyFunction_GET_CODE.exit:                         ; preds = %bb.d, %_PyFunction_GET_BUILTINS.exit, %.thread
  %i.t = phi ptr [ %i.k, %bb.d ], [ %i.s, %_PyFunction_GET_BUILTINS.exit ], [ %i.o, %.thread ]
  %i.u = phi ptr [ %i.i, %bb.d ], [ %i.q, %_PyFunction_GET_BUILTINS.exit ], [ %i.n, %.thread ]
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166  ; 2 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !15
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %.not15 = icmp eq ptr %.val7, @PyCode_Type
  br i1 %.not15, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !15
  %.pre16 = load ptr, ptr %i.d, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.249) #13
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge, %PyFunction_GET_CODE.exit
  %i.y = phi ptr [ %.pre16, %._crit_edge ], [ %i.t, %PyFunction_GET_CODE.exit ]
  %i.z = phi ptr [ %.pre, %._crit_edge ], [ %i.u, %PyFunction_GET_CODE.exit ]
  %i.aa = phi ptr [ %i.g, %._crit_edge ], [ %i.w, %PyFunction_GET_CODE.exit ]
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ac = call i32 @_PyCode_VerifyStateless(ptr noundef %i.e, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.z, ptr noundef %i.y) #13
  %i.ad = icmp slt i32 %i.ac, 0
  %._Py_NoneStruct = select i1 %i.ad, ptr null, ptr @_Py_NoneStruct
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  %.1 = phi ptr [ %._Py_NoneStruct, %bb.g ], [ null, %bb.f ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @pending_threadfunc(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 1, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !6
  %i.e = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.278, ptr noundef nonnull @pending_threadfunc.kwlist, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #13
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyThreadState_GetCurrent() #13
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !6    ; 3 uses
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %Py_INCREF.exit, %.lr.ph, %bb.b
  %i.m = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.b ], [ %i.r, %Py_INCREF.exit ]
  %i.n = load i32, ptr %i.c, align 4, !tbaa !6
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.d, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph, %Py_INCREF.exit
  %i.o = phi i32 [ %i.r, %Py_INCREF.exit ], [ %i.i, %.lr.ph ]
  %.02025.a = phi i32 [ %i.s, %Py_INCREF.exit ], [ 0, %.lr.ph ]
  %3 = load ptr, ptr %i.a, align 8, !tbaa !15     ; 2 uses
  %4 = load i32, ptr %3, align 8, !tbaa !16       ; 2 uses
  %i.p = icmp ugt i32 %4, -1073741825
  br i1 %i.p, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.q = add nuw i32 %4, 1
  store i32 %i.q, ptr %3, align 8, !tbaa !16
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !6
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %.lr.ph.split, %bb.c
  %i.r = phi i32 [ %i.o, %.lr.ph.split ], [ %.pre.a, %bb.c ] ; 3 uses
  %i.s = add nuw i32 %.02025.a, 1                 ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %.lr.ph.split, label %._crit_edge, !llvm.loop !196

bb.d:                                             ; preds = %._crit_edge
  %i.u = call ptr @PyEval_SaveThread() #13
  %.pre40 = load i32, ptr %i.b, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.v = phi i32 [ %i.m, %._crit_edge ], [ %.pre40, %bb.d ]
  %.019 = phi ptr [ null, %._crit_edge ], [ %i.u, %bb.d ]
  %.not37 = icmp eq i32 %i.v, 0
  br i1 %.not37, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.e, %.loopexit
  %.01826 = phi i32 [ %i.ae, %.loopexit ], [ 0, %bb.e ] ; 2 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !6
  %.not22 = icmp eq i32 %i.w, 0
  br i1 %.not22, label %bb.h, label %.preheader

.preheader:                                       ; preds = %.lr.ph28, %bb.g
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.y = call i32 @_PyEval_AddPendingCall(ptr noundef %i.h, ptr noundef nonnull @_pending_callback, ptr noundef %i.x, i32 noundef 0) #13 ; 2 uses
  %i.z = add i32 %i.y, 1
  %or.cond = icmp ult i32 %i.z, 2
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  call void @__assert_fail(ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.113, i32 noundef 1632, ptr noundef nonnull @__PRETTY_FUNCTION__.pending_threadfunc) #14
  unreachable

bb.g:                                             ; preds = %.preheader
  %i.aa = icmp eq i32 %i.y, -1
  br i1 %i.aa, label %.preheader, label %.loopexit, !llvm.loop !198

bb.h:                                             ; preds = %.lr.ph28
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ac = call i32 @_PyEval_AddPendingCall(ptr noundef %i.h, ptr noundef nonnull @_pending_callback, ptr noundef %i.ab, i32 noundef 0) #13
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %._crit_edge29, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h
  %i.ae = add nuw i32 %.01826, 1                  ; 3 uses
  %i.af = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ag = icmp ult i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph28, label %._crit_edge29, !llvm.loop !199

._crit_edge29:                                    ; preds = %.loopexit, %bb.h, %bb.e
  %.018.lcssa = phi i32 [ 0, %bb.e ], [ %.01826, %bb.h ], [ %i.ae, %.loopexit ] ; 3 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !6
  %.not23 = icmp eq i32 %i.ah, 0
  br i1 %.not23, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge29
  call void @PyEval_RestoreThread(ptr noundef %.019) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge29
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !6
  %i.aj = icmp ult i32 %.018.lcssa, %i.ai
  br i1 %i.aj, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.j
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !16
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %.lr.ph34.split, label %._crit_edge35

._crit_edge35:                                    ; preds = %Py_DECREF.exit, %.lr.ph34, %bb.j
  %i.an = zext i32 %.018.lcssa to i64
  %i.ao = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.an) #13
  br label %bb.m

.lr.ph34.split:                                   ; preds = %.lr.ph34, %Py_DECREF.exit
  %.032 = phi i32 [ %i.at, %Py_DECREF.exit ], [ %.018.lcssa, %.lr.ph34 ]
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %.lr.ph34.split
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !16
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph34.split, %bb.k, %bb.l
  %i.at = add nuw i32 %.032, 1                    ; 2 uses
  %i.au = load i32, ptr %i.b, align 4, !tbaa !6
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph34.split, label %._crit_edge35, !llvm.loop !200

bb.m:                                             ; preds = %bb.a, %._crit_edge35
  %.017 = phi ptr [ %i.ao, %._crit_edge35 ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @pending_identify(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.280, ptr noundef nonnull %i.a) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.d = call ptr @_PyInterpreterState_LookUpIDObject(ptr noundef %i.c) #13 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @PyErr_Occurred() #13
  %.not19 = icmp eq ptr %i.f, null
  br i1 %.not19, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !15
  call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.281) #13
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr @pending_identify_result.0, align 8, !tbaa !201
  %i.h = call ptr @PyThread_allocate_lock() #13   ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @PyThread_acquire_lock(ptr noundef nonnull %i.h, i32 noundef 1) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.k = call ptr @PyEval_SaveThread() #13
  %i.l = call i32 @_PyEval_AddPendingCall(ptr noundef nonnull %i.d, ptr noundef nonnull @_pending_identify_callback, ptr noundef nonnull %i.h, i32 noundef 0) #13 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.k) #13
  %i.m = add i32 %i.l, 1
  %or.cond = icmp ult i32 %i.m, 2
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.113, i32 noundef 1702, ptr noundef nonnull @__PRETTY_FUNCTION__.pending_identify) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %i.l, -1
  br i1 %i.n, label %bb.g, label %bb.j, !llvm.loop !203

bb.j:                                             ; preds = %bb.i
  %i.o = call i32 @PyThread_acquire_lock(ptr noundef nonnull %i.h, i32 noundef 1) #13 ; 0 uses
  call void @PyThread_release_lock(ptr noundef nonnull %i.h) #13
  call void @PyThread_free_lock(ptr noundef nonnull %i.h) #13
  %i.p = load i64, ptr @pending_identify_result.0, align 8, !tbaa !201
  %i.q = call ptr @PyLong_FromLongLong(i64 noundef %i.p) #13
  store i64 -1, ptr @pending_identify_result.0, align 8, !tbaa !201
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.j, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.j ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @tracemalloc_get_traceback(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.283, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.e = call ptr @PyLong_AsVoidPtr(ptr noundef %i.d) #13
  %i.f = call ptr @PyErr_Occurred() #13
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !6
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = call ptr @_PyTraceMalloc_GetTraceback(i32 noundef %i.g, i64 noundef %i.h) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.1
}

end_hunk_0
