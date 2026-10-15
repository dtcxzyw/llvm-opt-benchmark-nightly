Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@list_repr:bb.a
.peel.next.i:                                     ; preds = %Py_DECREF.exit.peel.i, %Py_DECREF.exit.i
  %.046.i = phi i64 [ %i.an, %Py_DECREF.exit.i ], [ 1, %Py_DECREF.exit.peel.i ] ; 2 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.046.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 9 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit.i, label %bb.l

bb.l:                                             ; preds = %.peel.next.i
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !32
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.l, %.peel.next.i
  %i.ae = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.h, i32 noundef 44) #13
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %_Py_NewRef.exit.i
  %i.ag = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.h, i32 noundef 32) #13
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call i32 @PyUnicodeWriter_WriteRepr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.aa) #13
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aa, align 8, !tbaa !32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %Py_DECREF.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #13
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.q, %bb.p, %bb.o
  %i.an = add nuw nsw i64 %.046.i, 1              ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ao = icmp slt i64 %i.an, %.val.i
  br i1 %i.ao, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit.peel.i, %.preheader.i
  %i.ap = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.h, i32 noundef 93) #13
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %Py_XDECREF.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  tail call void @Py_ReprLeave(ptr noundef nonnull %0) #13
  %i.ar = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.h) #13
  br label %list_repr_impl.exit

.loopexit.i:                                      ; preds = %bb.n, %bb.m, %_Py_NewRef.exit.i, %_Py_NewRef.exit.peel.i
  %.lcssa.i = phi ptr [ %i.o, %_Py_NewRef.exit.peel.i ], [ %i.aa, %_Py_NewRef.exit.i ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ] ; 3 uses
  %i.as = load i32, ptr %.lcssa.i, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i.i.i, label %bb.s, label %Py_XDECREF.exit.i

bb.s:                                             ; preds = %.loopexit.i
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %.lcssa.i, align 8, !tbaa !32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.t, label %Py_XDECREF.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.lcssa.i) #13
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.t, %bb.s, %.loopexit.i, %._crit_edge.i, %bb.g, %bb.f
  tail call void @PyUnicodeWriter_Discard(ptr noundef %i.h) #13
  tail call void @Py_ReprLeave(ptr noundef nonnull %0) #13
  br label %list_repr_impl.exit

list_repr_impl.exit:                              ; preds = %Py_XDECREF.exit.i, %bb.r, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.d ], [ %i.f, %bb.e ], [ null, %Py_XDECREF.exit.i ], [ %i.ar, %bb.r ]
  ret ptr %.0
}

declare i64 @PyObject_HashNotImplemented(ptr noundef) #1

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @list_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !33
  %i.b = add i64 %.val, -1                        ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i64 [ %i.b, %.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #13 ; 2 uses
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = add nsw i64 %i.e, -1
  %i.k = icmp sgt i64 %i.e, 0
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.i, %bb.c ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @list_clear_slot(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %list_clear_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !33
  %i.e = add i64 %.val.i, -1                      ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %Py_XDECREF.exit.i
  %i.g = phi i64 [ %i.m, %Py_XDECREF.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = getelementptr [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.i, label %bb.d, label %Py_XDECREF.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %Py_XDECREF.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #13
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %i.m = add nsw i64 %i.g, -1
  %i.n = icmp sgt i64 %i.g, 0
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %Py_XDECREF.exit.i, %bb.b
  tail call void @PyMem_Free(ptr noundef nonnull %i.b) #13
  br label %list_clear_impl.exit

list_clear_impl.exit:                             ; preds = %bb.a, %._crit_edge.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @list_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val114.i = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr i8, ptr %.val114.i, i64 168
  %.val116.i = load i64, ptr %i.b, align 8, !tbaa !53
  %i.c = and i64 %.val116.i, 33554432
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %list_richcompare_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %.val113.i, i64 168
  %.val115.i = load i64, ptr %i.e, align 8, !tbaa !53
  %i.f = and i64 %.val115.i, 33554432
  %.not70.i = icmp eq i64 %i.f, 0
  br i1 %.not70.i, label %list_richcompare_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val112.i = load i64, ptr %i.g, align 8, !tbaa !33 ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %.val111.i = load i64, ptr %i.h, align 8, !tbaa !33 ; 2 uses
  %.not71.i = icmp ne i64 %.val112.i, %.val111.i
  %i.i = and i32 %2, -2
  %or.cond.i = icmp eq i32 %i.i, 2
  %or.cond78.i = and i1 %or.cond.i, %.not71.i
  br i1 %or.cond78.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.j = icmp sgt i64 %.val112.i, 0
  br i1 %i.j, label %.lr.ph.i, label %bb.o

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 24         ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %2, 2
  %_Py_FalseStruct._Py_TrueStruct.i = select i1 %i.m, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %list_richcompare_impl.exit

bb.e:                                             ; preds = %.critedge.i.loopexit, %.lr.ph.i
  %.val110127.i = phi i64 [ %.val112.i, %.lr.ph.i ], [ %.val110.i, %.critedge.i.loopexit ] ; 2 uses
  %.065122.i = phi i64 [ 0, %.lr.ph.i ], [ %3, %.critedge.i.loopexit ] ; 10 uses
  %.val109.i = load i64, ptr %i.h, align 8, !tbaa !33 ; 2 uses
  %i.n = icmp slt i64 %.065122.i, %.val109.i
  br i1 %i.n, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %.065122.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 7 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %.065122.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 7 uses
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %.critedge.i.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %Py_INCREF.exit95.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %i.q, align 8, !tbaa !32
  br label %Py_INCREF.exit95.i

Py_INCREF.exit95.i:                               ; preds = %bb.h, %bb.g
  %i.y = load i32, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %Py_INCREF.exit94.i, label %bb.i

bb.i:                                             ; preds = %Py_INCREF.exit95.i
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.t, align 8, !tbaa !32
  br label %Py_INCREF.exit94.i

Py_INCREF.exit94.i:                               ; preds = %bb.i, %Py_INCREF.exit95.i
  %i.ab = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.q, ptr noundef nonnull %i.t, i32 noundef 2) #13 ; 2 uses
  %i.ac = load i32, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %.not.i88.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i88.i, label %bb.j, label %Py_DECREF.exit89.i

bb.j:                                             ; preds = %Py_INCREF.exit94.i
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.q, align 8, !tbaa !32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %Py_DECREF.exit89.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #13
  br label %Py_DECREF.exit89.i

Py_DECREF.exit89.i:                               ; preds = %bb.k, %bb.j, %Py_INCREF.exit94.i
  %i.af = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %.not.i86.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i86.i, label %bb.l, label %Py_DECREF.exit87.i

bb.l:                                             ; preds = %Py_DECREF.exit89.i
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.t, align 8, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %Py_DECREF.exit87.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #13
  br label %Py_DECREF.exit87.i

Py_DECREF.exit87.i:                               ; preds = %bb.m, %bb.l, %Py_DECREF.exit89.i
  %i.ai = icmp slt i32 %i.ab, 0
  br i1 %i.ai, label %list_richcompare_impl.exit, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit87.i
  %.not72.i = icmp eq i32 %i.ab, 0
  %.val108.pre.pre.i = load i64, ptr %i.g, align 8, !tbaa !33 ; 2 uses
  br i1 %.not72.i, label %.thread118.i.a, label %.critedge.i.loopexit

.thread118.i.a:                                   ; preds = %bb.n
  %.val105.i.pre7.pre = load i64, ptr %i.h, align 8, !tbaa !33
  br label %.critedge.i

.critedge.i.loopexit:                             ; preds = %bb.n, %bb.f
  %.val110.i = phi i64 [ %.val110127.i, %bb.f ], [ %.val108.pre.pre.i, %bb.n ] ; 3 uses
  %3 = add nuw nsw i64 %.065122.i, 1              ; 2 uses
  %4 = icmp slt i64 %3, %.val110.i
  br i1 %4, label %bb.e, label %.critedge.thread.i.loopexit, !llvm.loop !127

.critedge.i:                                      ; preds = %bb.e, %.thread118.i.a
  %.val108.i.a = phi i64 [ %.val105.i.pre7.pre, %.thread118.i.a ], [ %.val109.i, %bb.e ] ; 2 uses
  %.065.lcssa.i = phi i64 [ %.val108.pre.pre.i, %.thread118.i.a ], [ %.val110127.i, %bb.e ] ; 2 uses
  %.not73.i = icmp slt i64 %.065122.i, %.065.lcssa.i
  %.not74.i = icmp slt i64 %.065122.i, %.val108.i.a
  %or.cond = select i1 %.not73.i, i1 %.not74.i, i1 false
  br i1 %or.cond, label %bb.w, label %bb.o

.critedge.thread.i.loopexit:                      ; preds = %.critedge.i.loopexit
  %.val105.i.pre = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %.critedge.thread.i.loopexit, %.critedge.i, %.preheader.i
  %.val105.i = phi i64 [ %.val105.i.pre, %.critedge.thread.i.loopexit ], [ %.val108.i.a, %.critedge.i ], [ %.val111.i, %.preheader.i ] ; 6 uses
  %.val108145.i = phi i64 [ %.val110.i, %.critedge.thread.i.loopexit ], [ %.065.lcssa.i, %.critedge.i ], [ %.val112.i, %.preheader.i ] ; 6 uses
  switch i32 %2, label %bb.v [
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 0, label %bb.r
    i32 4, label %bb.s
    i32 1, label %bb.t
    i32 5, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp eq i64 %.val108145.i, %.val105.i
  %_Py_TrueStruct._Py_FalseStruct.i = select i1 %i.aj, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %list_richcompare_impl.exit

bb.q:                                             ; preds = %bb.o
  %.not77.i = icmp eq i64 %.val108145.i, %.val105.i
  %_Py_FalseStruct._Py_TrueStruct79.i = select i1 %.not77.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %list_richcompare_impl.exit

bb.r:                                             ; preds = %bb.o
  %i.ak = icmp slt i64 %.val108145.i, %.val105.i
  %_Py_TrueStruct._Py_FalseStruct80.i = select i1 %i.ak, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %list_richcompare_impl.exit

bb.s:                                             ; preds = %bb.o
  %i.al = icmp sgt i64 %.val108145.i, %.val105.i
  %_Py_TrueStruct._Py_FalseStruct81.i = select i1 %i.al, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %list_richcompare_impl.exit

bb.t:                                             ; preds = %bb.o
  %.not76.i = icmp sgt i64 %.val108145.i, %.val105.i
  %_Py_FalseStruct._Py_TrueStruct82.i = select i1 %.not76.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %list_richcompare_impl.exit

bb.u:                                             ; preds = %bb.o
  %.not75.i = icmp slt i64 %.val108145.i, %.val105.i
  %_Py_FalseStruct._Py_TrueStruct83.i = select i1 %.not75.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %list_richcompare_impl.exit

bb.v:                                             ; preds = %bb.o
  unreachable

bb.w:                                             ; preds = %.critedge.i
  switch i32 %2, label %bb.y [
    i32 2, label %list_richcompare_impl.exit
    i32 3, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %list_richcompare_impl.exit

bb.y:                                             ; preds = %bb.w
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.065122.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 5 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %.065122.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 5 uses
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !32 ; 2 uses
  %i.at = icmp ugt i32 %i.as, -1073741825
  br i1 %i.at, label %Py_INCREF.exit93.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.au = add nuw i32 %i.as, 1
  store i32 %i.au, ptr %i.ao, align 8, !tbaa !32
  br label %Py_INCREF.exit93.i

Py_INCREF.exit93.i:                               ; preds = %bb.z, %bb.y
  %i.av = load i32, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, -1073741825
  br i1 %i.aw, label %Py_INCREF.exit.i, label %bb.aa

bb.aa:                                            ; preds = %Py_INCREF.exit93.i
  %i.ax = add nuw i32 %i.av, 1
  store i32 %i.ax, ptr %i.ar, align 8, !tbaa !32
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.aa, %Py_INCREF.exit93.i
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.065122.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %.065122.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.be = tail call ptr @PyObject_RichCompare(ptr noundef %i.ba, ptr noundef %i.bd, i32 noundef %2) #13 ; 3 uses
  %i.bf = load i32, ptr %i.ao, align 8, !tbaa !32 ; 2 uses
  %.not.i84.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i84.i, label %bb.ab, label %Py_DECREF.exit85.i

bb.ab:                                            ; preds = %Py_INCREF.exit.i
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.ao, align 8, !tbaa !32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ac, label %Py_DECREF.exit85.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #13
  br label %Py_DECREF.exit85.i

Py_DECREF.exit85.i:                               ; preds = %bb.ac, %bb.ab, %Py_INCREF.exit.i
  %i.bi = load i32, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i.i, label %bb.ad, label %list_richcompare_impl.exit

bb.ad:                                            ; preds = %Py_DECREF.exit85.i
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.ar, align 8, !tbaa !32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ae, label %list_richcompare_impl.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #13
  br label %list_richcompare_impl.exit

list_richcompare_impl.exit:                       ; preds = %Py_DECREF.exit87.i, %bb.a, %bb.b, %bb.d, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w, %bb.x, %Py_DECREF.exit85.i, %bb.ad, %bb.ae
  %.3.i = phi ptr [ %_Py_FalseStruct._Py_TrueStruct.i, %bb.d ], [ @_Py_NotImplementedStruct, %bb.a ], [ %i.be, %bb.ad ], [ %_Py_TrueStruct._Py_FalseStruct.i, %bb.p ], [ @_Py_NotImplementedStruct, %bb.b ], [ %_Py_FalseStruct._Py_TrueStruct79.i, %bb.q ], [ %i.be, %bb.ae ], [ %_Py_TrueStruct._Py_FalseStruct80.i, %bb.r ], [ @_Py_TrueStruct, %bb.x ], [ %_Py_TrueStruct._Py_FalseStruct81.i, %bb.s ], [ %_Py_FalseStruct._Py_TrueStruct83.i, %bb.u ], [ %_Py_FalseStruct._Py_TrueStruct82.i, %bb.t ], [ @_Py_FalseStruct, %bb.w ], [ %i.be, %Py_DECREF.exit85.i ], [ null, %Py_DECREF.exit87.i ]
  ret ptr %.3.i
}

; Function Attrs: nounwind uwtable
define internal ptr @list_iter(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.b, align 8, !tbaa !53
  %i.c = and i64 %.val12, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 4022) #13
  br label %_PyObject_GC_TRACK.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 11552    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %_PyFreeList_Pop.exit

_PyFreeList_Pop.exit:                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  store ptr %i.h, ptr %i.f, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %i.e, i64 11560    ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !24
  tail call void @_Py_NewReference(ptr noundef nonnull %i.g) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @PyListIter_Type) #13 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_PyObject_GC_TRACK.exit, label %bb.e

bb.e:                                             ; preds = %_PyFreeList_Pop.exit, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ %i.g, %_PyFreeList_Pop.exit ] ; 6 uses
  %i.n = getelementptr i8, ptr %.0, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !76
  %i.o = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.f
  %i.r = getelementptr i8, ptr %.0, i64 24
  store ptr %0, ptr %i.r, align 8, !tbaa !77
  %i.s = getelementptr i8, ptr %.0, i64 -16       ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !19   ; 7 uses
  %i.u = getelementptr i8, ptr %i.t, i64 7408
  %i.v = getelementptr i8, ptr %i.t, i64 7416     ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !tbaa !37
  %i.aa = and i64 %i.z, 3
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !37
  %i.ac = getelementptr i8, ptr %.0, i64 -8       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.ae = and i64 %i.ad, 3
  %i.af = or i64 %i.ae, %i.w
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !36
  %i.ag = getelementptr i8, ptr %i.t, i64 7672
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.ai = xor i32 %i.ah, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = ptrtoint ptr %i.u to i64
  %i.al = or i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.s, align 8, !tbaa !37
  store i64 %i.y, ptr %i.v, align 8, !tbaa !36
  %i.am = getelementptr i8, ptr %i.t, i64 7428    ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !43
  %i.ap = getelementptr i8, ptr %i.t, i64 7656    ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !44
  %i.as = getelementptr i8, ptr %i.t, i64 7424
  %i.at = load i32, ptr %i.as, align 8, !tbaa !45
  %i.au = icmp sgt i32 %i.ao, %i.at
  br i1 %i.au, label %bb.g, label %_PyObject_GC_TRACK.exit

bb.g:                                             ; preds = %_Py_NewRef.exit
  %i.av = getelementptr i8, ptr %i.t, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.av) #13
  br label %_PyObject_GC_TRACK.exit

_PyObject_GC_TRACK.exit:                          ; preds = %bb.g, %_Py_NewRef.exit, %bb.d, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %.0, %_Py_NewRef.exit ], [ %.0, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @list___init__(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val17, @PyList_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val17, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyList_Type, i64 312), align 8, !tbaa !128
  %i.e = icmp ne ptr %i.c, %i.d
  %i.f = icmp eq ptr %2, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old1 = icmp eq ptr %2, null
  br i1 %.old1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #13
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %list___init___impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val21 = load i64, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %or.cond22 = icmp ult i64 %.val21, 2
  br i1 %or.cond22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.4, i64 noundef %.val21, i64 noundef 0, i64 noundef 1) #13
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %list___init___impl.exit, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f
  %.val18.pr = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %thread-pre-split
  %.val18 = phi i64 [ %.val18.pr, %thread-pre-split ], [ %.val21, %bb.e ]
  %i.j = icmp slt i64 %.val18, 1
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.g ], [ %i.l, %bb.h ]  ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i.i.i = load i64, ptr %i.o, align 8, !tbaa !33
  %i.p = add i64 %.val.i.i.i, -1                  ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
end_hunk_0
