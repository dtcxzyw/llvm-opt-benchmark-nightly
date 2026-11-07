Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/tupleobject?download=true
inline.NumInlined: 195
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@PyTuple_FromArray:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !0
  br label %_PyObject_GC_TRACK.exit

bb.d:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i64 %1, 21
  br i1 %i.c, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr i8, ptr %i.e, i64 11200
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %1 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  store ptr %i.i, ptr %i.g, align 8, !tbaa !52
  %i.j = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !54
  tail call void @_Py_NewReference(ptr noundef nonnull %i.h) #9, !inline_history !0
  br label %.lr.ph.preheader.sink.split

.critedge.i:                                      ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %1, 1152921504606846971
  br i1 %i.m, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.e
  %i.n = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %1) #9, !inline_history !0 ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %_PyObject_GC_TRACK.exit, label %.lr.ph.preheader.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.o = tail call ptr @PyErr_NoMemory() #9, !inline_history !0 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_PyObject_GC_TRACK.exit, label %.lr.ph.preheader

.lr.ph.preheader.sink.split:                      ; preds = %.critedge.thread.i, %bb.f
  %.sink34 = phi ptr [ %i.h, %bb.f ], [ %i.n, %.critedge.thread.i ] ; 2 uses
  %i.q = getelementptr i8, ptr %.sink34, i64 24
  store i64 -1, ptr %i.q, align 8, !tbaa !59
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.sink.split, %tuple_alloc.exit
  %.2.i26 = phi ptr [ %i.o, %tuple_alloc.exit ], [ %.sink34, %.lr.ph.preheader.sink.split ] ; 6 uses
  %i.r = getelementptr i8, ptr %.2.i26, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %_Py_NewRef.exit
  %i.s = trunc nuw i8 %.1 to i1
  br i1 %i.s, label %bb.j, label %_PyObject_GC_TRACK.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Py_NewRef.exit
  %.028 = phi i64 [ %i.ae, %_Py_NewRef.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.01727 = phi i8 [ %.1, %_Py_NewRef.exit ], [ 0, %.lr.ph.preheader ]
  %i.t = getelementptr [8 x i8], ptr %0, i64 %.028
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 4 uses
  %i.v = trunc nuw i8 %.01727 to i1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i64, ptr %i.x, align 8, !tbaa !79
  %i.y = lshr i64 %.val.val, 14
  %i.z = trunc i64 %i.y to i8
  %spec.select = and i8 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.1 = phi i8 [ 1, %.lr.ph ], [ %spec.select, %bb.g ] ; 2 uses
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !81  ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -1073741825
  br i1 %i.ab, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !81
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %bb.i
  %i.ad = getelementptr [8 x i8], ptr %i.r, i64 %.028
  store ptr %i.u, ptr %i.ad, align 8, !tbaa !61
  %i.ae = add nuw nsw i64 %.028, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr i8, ptr %.2.i26, i64 -16  ; 2 uses
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 7 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 7408
  %i.aj = getelementptr i8, ptr %i.ah, i64 7416   ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !64
  %i.ao = and i64 %i.an, 3
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !64
  %i.aq = getelementptr i8, ptr %.2.i26, i64 -8   ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.as = and i64 %i.ar, 3
  %i.at = or i64 %i.as, %i.ak
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !63
  %i.au = getelementptr i8, ptr %i.ah, i64 7672
  %i.av = load i32, ptr %i.au, align 8, !tbaa !68
  %i.aw = xor i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = ptrtoint ptr %i.ai to i64
  %i.az = or i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.af, align 8, !tbaa !64
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !63
  %i.ba = getelementptr i8, ptr %i.ah, i64 7428   ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !69
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !69
  %i.bd = getelementptr i8, ptr %i.ah, i64 7656   ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !70
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !70
  %i.bg = getelementptr i8, ptr %i.ah, i64 7424
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !71
  %i.bi = icmp sgt i32 %i.bc, %i.bh
  br i1 %i.bi, label %bb.k, label %_PyObject_GC_TRACK.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr i8, ptr %i.ah, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bj) #9
  br label %_PyObject_GC_TRACK.exit

_PyObject_GC_TRACK.exit:                          ; preds = %.critedge.thread.i, %bb.c, %bb.k, %bb.j, %bb.a, %tuple_alloc.exit, %._crit_edge
  %.119 = phi ptr [ %.2.i26, %._crit_edge ], [ null, %tuple_alloc.exit ], [ %.2.i26, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.a ], [ %.2.i26, %bb.j ], [ null, %bb.c ], [ null, %.critedge.thread.i ]
  ret ptr %.119
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyTuple_FromStackRefStealOnSuccess(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 !guid !101 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_PyObject_GC_TRACK.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !0
  br label %_PyObject_GC_TRACK.exit

bb.d:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i64 %1, 21
  br i1 %i.c, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr i8, ptr %i.e, i64 11200
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %1 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  store ptr %i.i, ptr %i.g, align 8, !tbaa !52
  %i.j = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !54
  tail call void @_Py_NewReference(ptr noundef nonnull %i.h) #9, !inline_history !0
  br label %.lr.ph.preheader.sink.split

.critedge.i:                                      ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %1, 1152921504606846971
  br i1 %i.m, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.e
  %i.n = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %1) #9, !inline_history !0 ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %_PyObject_GC_TRACK.exit, label %.lr.ph.preheader.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.o = tail call ptr @PyErr_NoMemory() #9, !inline_history !0 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_PyObject_GC_TRACK.exit, label %.lr.ph.preheader

.lr.ph.preheader.sink.split:                      ; preds = %.critedge.thread.i, %bb.f
  %.sink34 = phi ptr [ %i.h, %bb.f ], [ %i.n, %.critedge.thread.i ] ; 2 uses
  %i.q = getelementptr i8, ptr %.sink34, i64 24
  store i64 -1, ptr %i.q, align 8, !tbaa !59
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.sink.split, %tuple_alloc.exit
  %.2.i26 = phi ptr [ %i.o, %tuple_alloc.exit ], [ %.sink34, %.lr.ph.preheader.sink.split ] ; 6 uses
  %i.r = getelementptr i8, ptr %.2.i26, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k
  %i.s = trunc nuw i8 %.1 to i1
  br i1 %i.s, label %bb.l, label %_PyObject_GC_TRACK.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.028 = phi i64 [ %i.ag, %bb.k ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.01727 = phi i8 [ %.1, %bb.k ], [ 0, %.lr.ph.preheader ]
  %i.t = getelementptr [8 x i8], ptr %0, i64 %.028
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1
  %.not.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.w = inttoptr i64 %i.u to ptr
  br label %PyStackRef_AsPyObjectSteal.exit

bb.h:                                             ; preds = %.lr.ph
  %i.x = and i64 %i.u, -2
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !81   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %PyStackRef_AsPyObjectSteal.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !81
  br label %PyStackRef_AsPyObjectSteal.exit

PyStackRef_AsPyObjectSteal.exit:                  ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %2 = trunc nuw i8 %.01727 to i1
  br i1 %2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %PyStackRef_AsPyObjectSteal.exit
  %i.ac = getelementptr i8, ptr %.0.i, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ad = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i64, ptr %i.ad, align 8, !tbaa !79
  %i.ae = lshr i64 %.val.val, 14
  %3 = trunc i64 %i.ae to i8
  %spec.select = and i8 %3, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %PyStackRef_AsPyObjectSteal.exit
  %.1 = phi i8 [ 1, %PyStackRef_AsPyObjectSteal.exit ], [ %spec.select, %bb.j ] ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.r, i64 %.028
  store ptr %.0.i, ptr %i.af, align 8, !tbaa !61
  %i.ag = add nuw nsw i64 %.028, 1                ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not.a, label %._crit_edge, label %.lr.ph, !llvm.loop !100

bb.l:                                             ; preds = %._crit_edge
  %i.ah = getelementptr i8, ptr %.2.i26, i64 -16  ; 2 uses
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 7 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 7408
  %i.al = getelementptr i8, ptr %i.aj, i64 7416   ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !64
  %i.aq = and i64 %i.ap, 3
  %i.ar = or i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.an, align 8, !tbaa !64
  %i.as = getelementptr i8, ptr %.2.i26, i64 -8   ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !63
  %i.au = and i64 %i.at, 3
  %i.av = or i64 %i.au, %i.am
  store i64 %i.av, ptr %i.as, align 8, !tbaa !63
  %i.aw = getelementptr i8, ptr %i.aj, i64 7672
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !68
  %i.ay = xor i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = ptrtoint ptr %i.ak to i64
  %i.bb = or i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.ah, align 8, !tbaa !64
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !63
  %i.bc = getelementptr i8, ptr %i.aj, i64 7428   ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !69
  %i.bf = getelementptr i8, ptr %i.aj, i64 7656   ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !70
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !70
  %i.bi = getelementptr i8, ptr %i.aj, i64 7424
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.bk = icmp sgt i32 %i.be, %i.bj
  br i1 %i.bk, label %bb.m, label %_PyObject_GC_TRACK.exit

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr i8, ptr %i.aj, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bl) #9
  br label %_PyObject_GC_TRACK.exit

_PyObject_GC_TRACK.exit:                          ; preds = %.critedge.thread.i, %bb.c, %bb.m, %bb.l, %bb.a, %tuple_alloc.exit, %._crit_edge
  %.119 = phi ptr [ %.2.i26, %._crit_edge ], [ null, %tuple_alloc.exit ], [ %.2.i26, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.a ], [ %.2.i26, %bb.l ], [ null, %bb.c ], [ null, %.critedge.thread.i ]
  ret ptr %.119
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyTuple_FromArraySteal(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 !guid !106 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_PyObject_GC_TRACK.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr i8, ptr %i.f, i64 11200
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %1 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  store ptr %i.j, ptr %i.h, align 8, !tbaa !52
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !54
  tail call void @_Py_NewReference(ptr noundef nonnull %i.i) #9, !inline_history !0
  br label %.lr.ph.preheader.sink.split

.critedge.i:                                      ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %1, 1152921504606846971
  br i1 %i.n, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.d
  %i.o = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %1) #9, !inline_history !0 ; 2 uses
  %.not18.i = icmp eq ptr %i.o, null
  br i1 %.not18.i, label %.lr.ph27.preheader, label %.lr.ph.preheader.sink.split

.lr.ph27.preheader:                               ; preds = %tuple_alloc.exit, %.critedge.thread.i
  br label %.lr.ph27

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.p = tail call ptr @PyErr_NoMemory() #9, !inline_history !0 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.lr.ph27.preheader, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !0
  br label %_PyObject_GC_TRACK.exit

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %Py_DECREF.exit
  %.02026 = phi i64 [ %i.w, %Py_DECREF.exit ], [ 0, %.lr.ph27.preheader ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %0, i64 %.02026
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61   ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %.lr.ph27
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !81
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph27, %bb.f, %bb.g
  %i.w = add nuw nsw i64 %.02026, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.w, %1
  br i1 %exitcond28.not, label %_PyObject_GC_TRACK.exit, label %.lr.ph27, !llvm.loop !102

.lr.ph.preheader.sink.split:                      ; preds = %.critedge.thread.i, %bb.e
  %.sink36 = phi ptr [ %i.i, %bb.e ], [ %i.o, %.critedge.thread.i ] ; 2 uses
  %i.x = getelementptr i8, ptr %.sink36, i64 24
  store i64 -1, ptr %i.x, align 8, !tbaa !59
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.sink.split, %tuple_alloc.exit
  %.2.i24 = phi ptr [ %i.p, %tuple_alloc.exit ], [ %.sink36, %.lr.ph.preheader.sink.split ] ; 6 uses
  %i.y = getelementptr i8, ptr %.2.i24, i64 32    ; 6 uses
  %min.iters.check = icmp ult i64 %1, 10
  %.2.i2438 = ptrtoaddr ptr %.2.i24 to i64
  %i.z = sub i64 %.2.i2438, %i.a
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !61
  %wide.load39 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store <2 x ptr> %wide.load, ptr %i.ac, align 8, !tbaa !61
  store <2 x ptr> %wide.load39, ptr %i.ad, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01925.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader40, %.lr.ph.prol
  %.01925.prol = phi i64 [ %i.ai, %.lr.ph.prol ], [ %.01925.ph, %.lr.ph.preheader40 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader40 ]
  %i.af = getelementptr [8 x i8], ptr %0, i64 %.01925.prol
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = getelementptr [8 x i8], ptr %i.y, i64 %.01925.prol
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !61
  %i.ai = add nuw nsw i64 %.01925.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !104

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader40
  %.01925.unr = phi i64 [ %.01925.ph, %.lr.ph.preheader40 ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %.01925.ph, %1
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.al = getelementptr i8, ptr %.2.i24, i64 -16  ; 2 uses
  %i.am = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49 ; 7 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 7408
  %i.ap = getelementptr i8, ptr %i.an, i64 7416   ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !63 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !64
  %i.au = and i64 %i.at, 3
  %i.av = or i64 %i.au, %i.as
end_hunk_0
