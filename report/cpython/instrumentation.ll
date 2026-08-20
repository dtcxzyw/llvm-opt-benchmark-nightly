inline.NumInlined: 253
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@monitoring_set_events_impl:bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = and i32 %1, 196608
  %.not18 = icmp eq i32 %i.e, 0
  %i.f = and i32 %1, 196624
  %.not19 = icmp eq i32 %i.f, 196624
  %or.cond22 = or i1 %.not18, %.not19
  br i1 %or.cond22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.33) #12 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = and i32 %1, 327679
  %.not20 = icmp samesign ult i32 %1, 262144
  %i.j = and i32 %1, 64767
  %i.k = or disjoint i32 %i.j, 768
  %.0 = select i1 %.not20, i32 %i.i, i32 %i.k
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !165  ; 2 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.m) #12
  %i.n = tail call i32 @_PyMonitoring_SetEvents(i32 noundef %0, i32 noundef %.0)
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.m) #12
  %.not21 = icmp eq i32 %i.n, 0
  %.016 = select i1 %.not21, ptr @_Py_NoneStruct, ptr null
  br label %bb.g

bb.g:                                             ; preds = %check_valid_tool.exit, %bb.f, %bb.e, %bb.c
  %.1 = phi ptr [ %.016, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %check_valid_tool.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2048) i32 @monitoring_get_local_events_impl(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not = icmp eq ptr %.val, @PyCode_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !55
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.34) #12 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.d

check_valid_tool.exit:                            ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 5 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.h = shl nuw nsw i32 1, %0                    ; 3 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !39
  %i.j = zext i8 %i.i to i32
  %i.k = lshr i32 %i.j, %0
  %i.l = and i32 %i.k, 1
  %i.m = getelementptr i8, ptr %i.g, i64 1
  %i.n = load <8 x i8>, ptr %i.m, align 1, !tbaa !39
  %i.o = zext <8 x i8> %i.n to <8 x i32>
  %i.p = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %i.q = shufflevector <8 x i32> %i.p, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.r = and <8 x i32> %i.q, %i.o
  %i.s = icmp eq <8 x i32> %i.r, zeroinitializer
  %i.t = select <8 x i1> %i.s, <8 x i32> zeroinitializer, <8 x i32> <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %i.u = getelementptr i8, ptr %i.g, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !39
  %i.w = zext i8 %i.v to i32
  %i.x = and i32 %i.h, %i.w
  %.not17.9 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not17.9, i32 0, i32 512
  %i.z = getelementptr i8, ptr %i.g, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.h, %i.ab
  %.not17.10 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not17.10, i32 0, i32 1024
  %i.ae = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.t)
  %op.rdx = or disjoint i32 %i.ae, %i.y
  %op.rdx7 = or disjoint i32 %i.ad, %i.l
  %op.rdx8 = or disjoint i32 %op.rdx, %op.rdx7
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %check_valid_tool.exit, %bb.d, %bb.b
  %.013 = phi i32 [ -1, %bb.b ], [ -1, %check_valid_tool.exit ], [ 0, %bb.d ], [ %op.rdx8, %.preheader ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @monitoring_set_local_events_impl(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not = icmp eq ptr %.val, @PyCode_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !55
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.34) #12 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %0, 5
  br i1 %or.cond.i, label %check_valid_tool.exit, label %bb.d

check_valid_tool.exit:                            ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.27, i32 noundef %0) #12 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %2, 196608
  %.not20 = icmp eq i32 %i.f, 0
  %i.g = and i32 %2, 196624
  %.not21 = icmp eq i32 %i.g, 196624
  %or.cond24 = or i1 %.not20, %.not21
  br i1 %or.cond24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.33) #12 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = and i32 %2, -196609
  %i.k = and i32 %2, 262144
  %.not22 = icmp eq i32 %i.k, 0
  %i.l = and i32 %2, -459521
  %i.m = or disjoint i32 %i.l, 768
  %.0 = select i1 %.not22, i32 %i.j, i32 %i.m     ; 3 uses
  %or.cond = icmp ugt i32 %.0, 2047
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !55
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.35, i32 noundef %.0) #12 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  tail call void @_PyEval_StopTheWorld(ptr noundef %i.q) #12
  %i.r = tail call i32 @_PyMonitoring_SetLocalEvents(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %.0)
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.q) #12
  %.not23 = icmp eq i32 %i.r, 0
  %_Py_NoneStruct. = select i1 %.not23, ptr @_Py_NoneStruct, ptr null
  br label %bb.i

bb.i:                                             ; preds = %check_valid_tool.exit, %bb.h, %bb.g, %bb.e, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ %_Py_NoneStruct., %bb.h ], [ null, %check_valid_tool.exit ]
  ret ptr %.1
}

declare ptr @PyDict_New() local_unnamed_addr #5

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #5

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #5

declare ptr @_PyObject_New(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @branch_handler_vectorcall(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef %i.c) #12
  %i.e = tail call ptr @PyErr_Occurred() #12
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.d to i32
  %i.g = getelementptr i8, ptr %i.a, i64 208
  %i.h = sdiv i32 %i.f, 2
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [2 x i8], ptr %i.g, i64 %i.i
  %.sroa.0.0.copyload = load i8, ptr %i.j, align 2
  %i.k = add i8 %.sroa.0.0.copyload, 23
  %i.l = icmp ult i8 %i.k, 21
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199
  %i.o = tail call ptr @PyObject_Vectorcall(ptr noundef %i.n, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ @_PyInstrumentation_DISABLE, %bb.b ], [ %i.o, %bb.c ]
  ret ptr %.3
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #5

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @dealloc_branch_handler(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !55
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @PyObject_Free(ptr noundef nonnull %0) #12
  ret void
}

declare ptr @PyVectorcall_Call(ptr noundef, ptr noundef, ptr noundef) #5

declare void @PyObject_Free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @branchesiter_dealloc(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  tail call void @PyObject_Free(ptr noundef nonnull %0) #12
  ret void
}

declare ptr @PyObject_SelfIter(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal ptr @branchesiter_next(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %i.f = sext i32 %i.b to i64                     ; 2 uses
  %i.g = icmp sgt i64 %.val, %i.f
  br i1 %i.g, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 208
  %i.i = getelementptr i8, ptr %i.d, i64 176      ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 152
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.k = phi i64 [ %i.f, %.lr.ph ], [ %i.cj, %bb.o ] ; 2 uses
  %.04062 = phi i32 [ 0, %.lr.ph ], [ %.242, %bb.o ] ; 4 uses
  %.04361 = phi i32 [ %i.b, %.lr.ph ], [ %i.bi, %bb.o ] ; 4 uses
  %i.l = getelementptr [2 x i8], ptr %i.h, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !11   ; 3 uses
  %.sroa.7.0.extract.shift.i = lshr i16 %i.m, 8   ; 4 uses
  %i.n = and i16 %i.m, 255                        ; 3 uses
  %i.o = icmp samesign ult i16 %i.n, 233
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i16 %i.n to i64
  %i.q = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

bb.d:                                             ; preds = %bb.b
  %i.s = zext nneg i16 %i.n to i32
  %trunc.i = trunc i16 %i.m to i8
  switch i8 %trunc.i, label %bb.g [
    i8 -2, label %bb.e
    i8 -3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = zext nneg i16 %.sroa.7.0.extract.shift.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = getelementptr i8, ptr %i.x, i64 33
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41
  %i.af = zext i8 %i.ae to i16
  br label %_Py_GetBaseCodeUnit.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.ah = getelementptr i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.al = zext i8 %i.ak to i32
  %i.am = mul i32 %.04361, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !39
  %i.aq = zext i8 %i.ap to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i32 [ %i.aq, %bb.f ], [ %i.s, %bb.d ] ; 2 uses
  %i.ar = icmp eq i32 %.0.i, 237
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.at = getelementptr i8, ptr %i.as, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = getelementptr i8, ptr %i.au, i64 %i.k
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %i.ax, %bb.h ], [ %.0.i, %bb.g ]
  %i.ay = zext nneg i32 %.1.i to i64              ; 2 uses
  %i.az = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !39  ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %bb.j, label %_Py_GetBaseCodeUnit.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %bb.c, %bb.e, %bb.i, %bb.j
  %.sroa.0.1.i = phi i8 [ %i.r, %bb.c ], [ %i.ac, %bb.e ], [ %i.bc, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.sroa.7.0.i = phi i16 [ %.sroa.7.0.extract.shift.i, %bb.c ], [ %i.af, %bb.e ], [ %.sroa.7.0.extract.shift.i, %bb.j ], [ %.sroa.7.0.extract.shift.i, %bb.i ] ; 4 uses
  %i.bd = add i32 %.04361, 1
  %i.be = zext i8 %.sroa.0.1.i to i64
  %i.bf = getelementptr i8, ptr @_PyOpcode_Caches, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add i32 %i.bd, %i.bh                    ; 10 uses
  switch i8 %.sroa.0.1.i, label %bb.o [
    i8 69, label %bb.k
    i8 70, label %bb.l
    i8 100, label %bb.m
    i8 103, label %bb.m
    i8 101, label %bb.m
    i8 102, label %bb.m
    i8 68, label %bb.n
  ]

bb.k:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.7.0.i to i32
  %i.bj = shl i32 %.04062, 8
  %i.bk = or disjoint i32 %i.bj, %.sroa.5.0.extract.trunc
  br label %bb.o

bb.l:                                             ; preds = %_Py_GetBaseCodeUnit.exit
  %i.bl = shl i32 %.04062, 8
  %i.bm = zext nneg i16 %.sroa.7.0.i to i32
  %i.bn = or disjoint i32 %i.bl, %i.bm
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !209
  %i.bo = add i32 %i.bn, %i.bi
  %i.bp = shl i32 %.04361, 1
  %i.bq = shl i32 %i.bi, 1
end_hunk_0
