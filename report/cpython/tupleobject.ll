inline.NumInlined: 195
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_PyTuple_FromStackRefStealOnSuccess:bb.a
  br label %_PyObject_GC_TRACK.exit

bb.d:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i64 %1, 21
  br i1 %i.c, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %i.e, i64 11200
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %1 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  store ptr %i.i, ptr %i.g, align 8, !tbaa !15
  %i.j = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !19
  tail call void @_Py_NewReference(ptr noundef nonnull %i.h) #9, !inline_history !11
  br label %.lr.ph.preheader.sink.split

.critedge.i:                                      ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %1, 1152921504606846971
  br i1 %i.m, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.e
  %i.n = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %1) #9, !inline_history !11 ; 2 uses
  %.not17.i = icmp eq ptr %i.n, null
  br i1 %.not17.i, label %_PyObject_GC_TRACK.exit, label %.lr.ph.preheader.sink.split

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.o = tail call ptr @PyErr_NoMemory() #9, !inline_history !11 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_PyObject_GC_TRACK.exit, label %.lr.ph.preheader

.lr.ph.preheader.sink.split:                      ; preds = %.critedge.thread.i, %bb.f
  %.sink34 = phi ptr [ %i.h, %bb.f ], [ %i.n, %.critedge.thread.i ] ; 2 uses
  %i.q = getelementptr i8, ptr %.sink34, i64 24
  store i64 -1, ptr %i.q, align 8, !tbaa !20
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.sink.split, %tuple_alloc.exit
  %.2.i26 = phi ptr [ %i.o, %tuple_alloc.exit ], [ %.sink34, %.lr.ph.preheader.sink.split ] ; 6 uses
  %i.r = getelementptr i8, ptr %.2.i26, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k
  %i.s = trunc nuw i8 %.119 to i1
  br i1 %i.s, label %bb.l, label %_PyObject_GC_TRACK.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.01728 = phi i64 [ %i.ai, %bb.k ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.01827 = phi i8 [ %.119, %bb.k ], [ 0, %.lr.ph.preheader ]
  %i.t = getelementptr [8 x i8], ptr %0, i64 %.01728
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
  %i.z = load i32, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %PyStackRef_AsPyObjectSteal.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !46
  br label %PyStackRef_AsPyObjectSteal.exit

PyStackRef_AsPyObjectSteal.exit:                  ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %i.ac = trunc nuw i8 %.01827 to i1
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %PyStackRef_AsPyObjectSteal.exit
  %i.ad = getelementptr i8, ptr %.0.i, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.af = lshr i64 %.val.val, 14
  %i.ag = trunc i64 %i.af to i8
  %spec.select = and i8 %i.ag, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %PyStackRef_AsPyObjectSteal.exit
  %.119 = phi i8 [ 1, %PyStackRef_AsPyObjectSteal.exit ], [ %spec.select, %bb.j ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.r, i64 %.01728
  store ptr %.0.i, ptr %i.ah, align 8, !tbaa !25
  %i.ai = add nuw nsw i64 %.01728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

bb.l:                                             ; preds = %._crit_edge
  %i.aj = getelementptr i8, ptr %.2.i26, i64 -16  ; 2 uses
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 7 uses
  %i.am = getelementptr i8, ptr %i.al, i64 7408
  %i.an = getelementptr i8, ptr %i.al, i64 7416   ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.as = and i64 %i.ar, 3
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !29
  %i.au = getelementptr i8, ptr %.2.i26, i64 -8   ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27
  %i.aw = and i64 %i.av, 3
  %i.ax = or i64 %i.aw, %i.ao
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !27
  %i.ay = getelementptr i8, ptr %i.al, i64 7672
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !30
  %i.ba = xor i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = ptrtoint ptr %i.am to i64
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !29
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !27
  %i.be = getelementptr i8, ptr %i.al, i64 7428   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !34
  %i.bh = getelementptr i8, ptr %i.al, i64 7656   ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !35
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !35
  %i.bk = getelementptr i8, ptr %i.al, i64 7424
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !36
  %i.bm = icmp sgt i32 %i.bg, %i.bl
  br i1 %i.bm, label %bb.m, label %_PyObject_GC_TRACK.exit

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %i.al, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bn) #9
  br label %_PyObject_GC_TRACK.exit

_PyObject_GC_TRACK.exit:                          ; preds = %.critedge.thread.i, %bb.c, %bb.m, %bb.l, %bb.a, %tuple_alloc.exit, %._crit_edge
  %.1 = phi ptr [ %.2.i26, %._crit_edge ], [ null, %tuple_alloc.exit ], [ %.2.i26, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.a ], [ %.2.i26, %bb.l ], [ null, %bb.c ], [ null, %.critedge.thread.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyTuple_FromArraySteal(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr i8, ptr %i.f, i64 11200
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %1 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  store ptr %i.j, ptr %i.h, align 8, !tbaa !15
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !19
  tail call void @_Py_NewReference(ptr noundef nonnull %i.i) #9, !inline_history !11
  br label %.lr.ph.preheader.sink.split

.critedge.i:                                      ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %1, 1152921504606846971
  br i1 %i.n, label %tuple_alloc.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.d
  %i.o = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyTuple_Type, i64 noundef %1) #9, !inline_history !11 ; 2 uses
  %.not17.i = icmp eq ptr %i.o, null
  br i1 %.not17.i, label %.lr.ph27.preheader, label %.lr.ph.preheader.sink.split

.lr.ph27.preheader:                               ; preds = %tuple_alloc.exit, %.critedge.thread.i
  br label %.lr.ph27

tuple_alloc.exit:                                 ; preds = %.critedge.i
  %i.p = tail call ptr @PyErr_NoMemory() #9, !inline_history !11 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.lr.ph27.preheader, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 40) #9, !inline_history !11
  br label %_PyObject_GC_TRACK.exit

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %Py_DECREF.exit
  %.02026 = phi i64 [ %i.w, %Py_DECREF.exit ], [ 0, %.lr.ph27.preheader ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %0, i64 %.02026
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %.lr.ph27
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !46
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph27, %bb.f, %bb.g
  %i.w = add nuw nsw i64 %.02026, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.w, %1
  br i1 %exitcond28.not, label %_PyObject_GC_TRACK.exit, label %.lr.ph27, !llvm.loop !52

.lr.ph.preheader.sink.split:                      ; preds = %.critedge.thread.i, %bb.e
  %.sink36 = phi ptr [ %i.i, %bb.e ], [ %i.o, %.critedge.thread.i ] ; 2 uses
  %i.x = getelementptr i8, ptr %.sink36, i64 24
  store i64 -1, ptr %i.x, align 8, !tbaa !20
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.sink.split, %tuple_alloc.exit
  %.2.i24 = phi ptr [ %i.p, %tuple_alloc.exit ], [ %.sink36, %.lr.ph.preheader.sink.split ] ; 6 uses
  %2 = getelementptr i8, ptr %.2.i24, i64 32      ; 6 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %.2.i2437 = ptrtoaddr ptr %.2.i24 to i64
  %3 = add i64 %.2.i2437, 32
  %4 = sub i64 %3, %i.a
  %diff.check = icmp ult i64 %4, 32
  br i1 %diff.check, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %wide.load = load <2 x ptr>, ptr %i.y, align 8, !tbaa !25
  %wide.load38 = load <2 x ptr>, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store <2 x ptr> %wide.load, ptr %i.aa, align 8, !tbaa !25
  store <2 x ptr> %wide.load38, ptr %i.ab, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01925.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader39, %.lr.ph.prol
  %.01925.prol = phi i64 [ %i.ag, %.lr.ph.prol ], [ %.01925.ph, %.lr.ph.preheader39 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader39 ]
  %i.ad = getelementptr [8 x i8], ptr %0, i64 %.01925.prol
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr [8 x i8], ptr %2, i64 %.01925.prol
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = add nuw nsw i64 %.01925.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !56

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader39
  %.01925.unr = phi i64 [ %.01925.ph, %.lr.ph.preheader39 ], [ %i.ag, %.lr.ph.prol ]
  %i.ah = sub nsw i64 %.01925.ph, %1
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.aj = getelementptr i8, ptr %.2.i24, i64 -16  ; 2 uses
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 7 uses
  %i.am = getelementptr i8, ptr %i.al, i64 7408
  %i.an = getelementptr i8, ptr %i.al, i64 7416   ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.as = and i64 %i.ar, 3
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !29
  %i.au = getelementptr i8, ptr %.2.i24, i64 -8   ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27
  %i.aw = and i64 %i.av, 3
  %i.ax = or i64 %i.aw, %i.ao
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !27
  %i.ay = getelementptr i8, ptr %i.al, i64 7672
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !30
  %i.ba = xor i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = ptrtoint ptr %i.am to i64
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !29
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !27
  %i.be = getelementptr i8, ptr %i.al, i64 7428   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !34
  %i.bh = getelementptr i8, ptr %i.al, i64 7656   ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !35
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !35
  %i.bk = getelementptr i8, ptr %i.al, i64 7424
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !36
  %i.bm = icmp sgt i32 %i.bg, %i.bl
  br i1 %i.bm, label %bb.h, label %_PyObject_GC_TRACK.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bn = getelementptr i8, ptr %i.al, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bn) #9
  br label %_PyObject_GC_TRACK.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01925 = phi i64 [ %i.cd, %.lr.ph ], [ %.01925.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr [8 x i8], ptr %0, i64 %.01925
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25
  %i.bq = getelementptr [8 x i8], ptr %2, i64 %.01925
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !25
  %i.br = add nuw nsw i64 %.01925, 1              ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr [8 x i8], ptr %2, i64 %i.br
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !25
  %i.bv = add nuw nsw i64 %.01925, 2              ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25
  %i.by = getelementptr [8 x i8], ptr %2, i64 %i.bv
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !25
  %i.bz = add nuw nsw i64 %.01925, 3              ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %0, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25
  %i.cc = getelementptr [8 x i8], ptr %2, i64 %i.bz
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !25
  %i.cd = add nuw nsw i64 %.01925, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cd, %1
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !58

_PyObject_GC_TRACK.exit:                          ; preds = %Py_DECREF.exit, %.preheader, %bb.h, %._crit_edge, %bb.a
  %.1 = phi ptr [ %.2.i24, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.a ], [ %.2.i24, %._crit_edge ], [ null, %.preheader ], [ null, %Py_DECREF.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyTuple_BinarySlice(ptr nofree noundef captures(ret: address, provenance) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.d = call i32 @_PyEval_UnpackIndices(ptr noundef %1, ptr noundef %2, i64 noundef %.val, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !59   ; 6 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = load i64, ptr %i.b, align 8              ; 3 uses
  %i.h = icmp eq i64 %i.g, %.val
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %0, align 8, !tbaa !46
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.g, %i.e
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.e, ptr %i.b, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi i64 [ %i.e, %bb.f ], [ %i.g, %bb.e ]
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.e
  %i.p = sub i64 %i.m, %i.e
  %i.q = call ptr @PyTuple_FromArray(ptr noundef %i.o, i64 noundef %i.p)
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.a ], [ %i.q, %bb.g ], [ %0, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

declare i32 @_PyEval_UnpackIndices(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PyTuple_GetSlice(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.c, align 8, !tbaa !38
  %i.d = and i64 %.val6, 67108864
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 527) #9
  br label %tuple_slice.exit

bb.d:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val19.i = load i64, ptr %i.e, align 8, !tbaa !45 ; 2 uses
  %spec.select21.i = tail call i64 @llvm.smin.i64(i64 %2, i64 %.val19.i)
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %spec.select21.i, i64 %spec.store.select.i) ; 2 uses
  %i.f = icmp slt i64 %1, 1
  %i.g = icmp eq i64 %spec.select.i, %.val19.i
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false
  %.not.i = icmp eq ptr %.val, @PyTuple_Type
  %or.cond = and i1 %.not.i, %or.cond.i
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %tuple_slice.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %0, align 8, !tbaa !46
  br label %tuple_slice.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %spec.store.select.i
  %i.m = sub nsw i64 %spec.select.i, %spec.store.select.i
  %i.n = tail call ptr @PyTuple_FromArray(ptr noundef %i.l, i64 noundef %i.m), !inline_history !60
  br label %tuple_slice.exit
end_hunk_0
