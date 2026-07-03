inline.NumInlined: 126
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_PyObject_VectorcallDictTstate:bb.a

bb.m:                                             ; preds = %bb.l, %.critedge, %PyVectorcall_Function.exit.thread
  %.2 = phi ptr [ %i.j, %PyVectorcall_Function.exit.thread ], [ %i.af, %bb.l ], [ null, %.critedge ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @PyVectorcall_Function(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val6.i = load i64, ptr %i.b, align 8, !tbaa !41
  %i.c = and i64 %.val6.i, 2048
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyVectorcall_FunctionInline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val.i, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %.0.copyload.i = load ptr, ptr %i.f, align 1
  br label %_PyVectorcall_FunctionInline.exit

_PyVectorcall_FunctionInline.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %.0.copyload.i, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @_PyObject_MakeTpCall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val44 = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr i8, ptr %.val44, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @object_is_not_callable(ptr noundef %0, ptr noundef nonnull %1)
  br label %Py_DECREF.exit41

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyTuple_FromArray(ptr noundef %2, i64 noundef %3) #10 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val45 = load i64, ptr %i.i, align 8, !tbaa !41
  %i.j = and i64 %.val45, 536870912
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %4, i64 16
  %.val46 = load i64, ptr %i.k, align 8, !tbaa !48 ; 2 uses
  %.not36 = icmp eq i64 %.val46, 0
  br i1 %.not36, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr [8 x i8], ptr %2, i64 %3
  %i.m = getelementptr i8, ptr %4, i64 32
  %i.n = tail call ptr @_PyDict_FromItems(ptr noundef %i.m, i64 noundef 1, ptr noundef %i.l, i64 noundef 1, i64 noundef %.val46) #10 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not.i40 = icmp sgt i32 %i.p, -1
  br i1 %.not.i40, label %bb.i, label %Py_DECREF.exit41

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.e, align 8, !tbaa !31
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %Py_DECREF.exit41

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %Py_DECREF.exit41

bb.k:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %.031 = phi ptr [ null, %bb.d ], [ %4, %bb.g ], [ %4, %bb.e ], [ null, %bb.f ]
  %.029 = phi ptr [ null, %bb.d ], [ %i.n, %bb.g ], [ %4, %bb.e ], [ null, %bb.f ] ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 952
  %.val.i47 = load i64, ptr %i.s, align 8, !tbaa !52 ; 2 uses
  %i.t = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = icmp ule i64 %.val.i47, %i.u
  %i.w = add i64 %.val.i47, -32768
  %i.x = icmp ugt i64 %i.w, %i.u
  %narrow.i.not.i = or i1 %i.v, %i.x
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit.thread, label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %bb.k
  %i.y = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #10
  %.not48 = icmp eq i32 %i.y, 0
  br i1 %.not48, label %_Py_EnterRecursiveCallTstate.exit.thread, label %bb.l

_Py_EnterRecursiveCallTstate.exit.thread:         ; preds = %bb.k, %_Py_EnterRecursiveCallTstate.exit
  %i.z = tail call ptr %i.c(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef %.029) #10
  br label %bb.l

bb.l:                                             ; preds = %_Py_EnterRecursiveCallTstate.exit.thread, %_Py_EnterRecursiveCallTstate.exit
  %.0 = phi ptr [ %i.z, %_Py_EnterRecursiveCallTstate.exit.thread ], [ null, %_Py_EnterRecursiveCallTstate.exit ]
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %.not.i38 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i38, label %bb.m, label %Py_DECREF.exit39

bb.m:                                             ; preds = %bb.l
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !31
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %Py_DECREF.exit39

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %Py_DECREF.exit39

Py_DECREF.exit39:                                 ; preds = %bb.l, %bb.m, %bb.n
  %.not37 = icmp eq ptr %.029, %.031
  br i1 %.not37, label %Py_DECREF.exit, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit39
  %i.ad = load i32, ptr %.029, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %.029, align 8, !tbaa !31
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.029) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit39
  %i.ag = tail call ptr @_Py_CheckFunctionResult(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %.0, ptr noundef null)
  br label %Py_DECREF.exit41

Py_DECREF.exit41:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.c, %Py_DECREF.exit, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ag, %Py_DECREF.exit ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyStack_UnpackDict(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr i8, ptr %3, i64 16
  %.val44 = load i64, ptr %i.e, align 8, !tbaa !44 ; 3 uses
  %i.f = sub i64 1152921504606846974, %.val44
  %i.g = icmp sgt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @_PyErr_NoMemory(ptr noundef %0) #10 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %2, 1
  %i.j = add i64 %i.i, %.val44
  %i.k = shl i64 %i.j, 3
  %i.l = tail call ptr @PyMem_Malloc(i64 noundef %i.k) #10 ; 5 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @_PyErr_NoMemory(ptr noundef %0) #10 ; 0 uses
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @PyTuple_New(i64 noundef %.val44) #10 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @PyMem_Free(ptr noundef nonnull %i.l) #10
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.l, i64 8        ; 8 uses
  %i.s = icmp sgt i64 %2, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %min.iters.check = icmp ult i64 %2, 10
  br i1 %min.iters.check, label %.lr.ph.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %5 = sub i64 %i.m, %i.a
  %6 = add i64 %5, 7
  %diff.check = icmp ult i64 %6, 31
  br i1 %diff.check, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <2 x ptr>, ptr %i.t, align 8, !tbaa !30
  %wide.load61 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.load, ptr %i.v, align 8, !tbaa !30
  store <2 x ptr> %wide.load61, ptr %i.w, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader62

.lr.ph.preheader62:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03946.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader62, %.lr.ph.prol
  %.03946.prol = phi i64 [ %i.ab, %.lr.ph.prol ], [ %.03946.ph, %.lr.ph.preheader62 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader62 ]
  %i.y = getelementptr [8 x i8], ptr %1, i64 %.03946.prol
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %.03946.prol
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !30
  %i.ab = add nuw nsw i64 %.03946.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !63

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader62
  %.03946.unr = phi i64 [ %.03946.ph, %.lr.ph.preheader62 ], [ %i.ab, %.lr.ph.prol ]
  %i.ac = sub nsw i64 %.03946.ph, %2
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.g
  %i.ae = getelementptr [8 x i8], ptr %i.r, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.af = call i32 @PyDict_Next(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %._crit_edge52.thread, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.ag = getelementptr i8, ptr %i.p, i64 32
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03946 = phi i64 [ %i.aw, %.lr.ph ], [ %.03946.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %.03946
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr [8 x i8], ptr %i.r, i64 %.03946
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !30
  %i.ak = add nuw nsw i64 %.03946, 1              ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %1, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr [8 x i8], ptr %i.r, i64 %i.ak
  store ptr %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = add nuw nsw i64 %.03946, 2              ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr [8 x i8], ptr %i.r, i64 %i.ao
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !30
  %i.as = add nuw nsw i64 %.03946, 3              ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %1, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr [8 x i8], ptr %i.r, i64 %i.as
  store ptr %i.au, ptr %i.av, align 8, !tbaa !30
  %i.aw = add nuw nsw i64 %.03946, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aw, %2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !66

bb.h:                                             ; preds = %.lr.ph51, %_Py_NewRef.exit45
  %.049 = phi i64 [ 268435456, %.lr.ph51 ], [ %i.bb, %_Py_NewRef.exit45 ]
  %.03748 = phi i64 [ 0, %.lr.ph51 ], [ %i.bl, %_Py_NewRef.exit45 ] ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !30  ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr i8, ptr %.val, i64 168
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41
  %i.bb = and i64 %i.ba, %.049                    ; 2 uses
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, -1073741825
  br i1 %i.bd, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add nuw i32 %i.bc, 1
  store i32 %i.be, ptr %i.ax, align 8, !tbaa !31
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %bb.i
  %i.bf = getelementptr [8 x i8], ptr %i.ag, i64 %.03748
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !30
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !30  ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, -1073741825
  br i1 %i.bi, label %_Py_NewRef.exit45, label %bb.j

bb.j:                                             ; preds = %_Py_NewRef.exit
  %i.bj = add nuw i32 %i.bh, 1
  store i32 %i.bj, ptr %i.bg, align 8, !tbaa !31
  br label %_Py_NewRef.exit45

_Py_NewRef.exit45:                                ; preds = %_Py_NewRef.exit, %bb.j
  %i.bk = getelementptr [8 x i8], ptr %i.ae, i64 %.03748
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !30
  %i.bl = add i64 %.03748, 1
  %i.bm = call i32 @PyDict_Next(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %._crit_edge52, label %bb.h, !llvm.loop !67

._crit_edge52:                                    ; preds = %_Py_NewRef.exit45
  %i.bn = icmp eq i64 %i.bb, 0
  br i1 %i.bn, label %bb.k, label %._crit_edge52.thread

bb.k:                                             ; preds = %._crit_edge52
  %i.bo = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  call void @_PyErr_SetString(ptr noundef %0, ptr noundef %i.bo, ptr noundef nonnull @.str.10) #10
  %i.bp = getelementptr i8, ptr %i.p, i64 16
  %.val.i = load i64, ptr %i.bp, align 8, !tbaa !48 ; 2 uses
  %i.bq = icmp sgt i64 %.val.i, 0
  br i1 %i.bq, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %Py_DECREF.exit.i, %bb.k
  call void @PyMem_Free(ptr noundef nonnull %i.l) #10
  %i.br = load i32, ptr %i.p, align 8, !tbaa !31  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i.i, label %bb.l, label %_PyStack_UnpackDict_Free.exit

bb.l:                                             ; preds = %._crit_edge.i
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.p, align 8, !tbaa !31
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.m, label %_PyStack_UnpackDict_Free.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #10
  br label %_PyStack_UnpackDict_Free.exit

.lr.ph.i:                                         ; preds = %bb.k, %Py_DECREF.exit.i
  %.08.i = phi i64 [ %i.bz, %Py_DECREF.exit.i ], [ 0, %bb.k ] ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.ae, i64 %.08.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not.i.i, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !31
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.o, %bb.n, %.lr.ph.i
  %i.bz = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %.val.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !49

._crit_edge52.thread:                             ; preds = %._crit_edge, %._crit_edge52
  store ptr %i.p, ptr %4, align 8, !tbaa !30
  br label %_PyStack_UnpackDict_Free.exit

_PyStack_UnpackDict_Free.exit:                    ; preds = %bb.m, %bb.l, %._crit_edge.i, %._crit_edge52.thread
  %.038 = phi ptr [ %i.r, %._crit_edge52.thread ], [ null, %._crit_edge.i ], [ null, %bb.l ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %_PyStack_UnpackDict_Free.exit, %bb.f, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %.038, %_PyStack_UnpackDict_Free.exit ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define hidden void @_PyStack_UnpackDict_Free(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.b = icmp sgt i64 %.val, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge
end_hunk_0
