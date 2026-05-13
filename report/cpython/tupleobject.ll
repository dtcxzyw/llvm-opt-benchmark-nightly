inline.NumInlined: 195
inline.NumDeleted: 42
begin_hunk_0_@tuple_subscript:bb.a
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !25
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !59
  %i.bk = add i64 %i.bj, %.03665                  ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.az, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, -1073741825
  br i1 %i.bo, label %_Py_NewRef.exit52.1, label %bb.s

bb.s:                                             ; preds = %_Py_NewRef.exit52
  %i.bp = add nuw i32 %i.bn, 1
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !46
  br label %_Py_NewRef.exit52.1

_Py_NewRef.exit52.1:                              ; preds = %bb.s, %_Py_NewRef.exit52
  %i.bq = getelementptr [8 x i8], ptr %i.ba, i64 %.03566
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !25
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !59
  %i.bt = add i64 %i.bs, %i.bk                    ; 2 uses
  %i.bu = add nuw nsw i64 %.03566, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !90

._crit_edge.unr-lcssa:                            ; preds = %_Py_NewRef.exit52.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03566.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bu, %._crit_edge.unr-lcssa ]
  %.03665.epil.init = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %i.bt, %._crit_edge.unr-lcssa ]
  %lcmp.mod78 = trunc i64 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bv = getelementptr [8 x i8], ptr %i.az, i64 %.03665.epil.init
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !46 ; 2 uses
  %i.by = icmp ugt i32 %i.bx, -1073741825
  br i1 %i.by, label %_Py_NewRef.exit52.epil, label %bb.t

bb.t:                                             ; preds = %.lr.ph.epil.preheader
  %i.bz = add nuw i32 %i.bx, 1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !46
  br label %_Py_NewRef.exit52.epil

_Py_NewRef.exit52.epil:                           ; preds = %bb.t, %.lr.ph.epil.preheader
  %i.ca = getelementptr [8 x i8], ptr %i.ba, i64 %.03566.epil.init
  store ptr %i.bw, ptr %i.ca, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %_Py_NewRef.exit52.epil
  %i.cb = getelementptr i8, ptr %.2.i59, i64 -16  ; 2 uses
  %i.cc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 7 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 7408
  %i.cf = getelementptr i8, ptr %i.cd, i64 7416   ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !27 ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !29
  %i.ck = and i64 %i.cj, 3
  %i.cl = or i64 %i.ck, %i.ci
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !29
  %i.cm = getelementptr i8, ptr %.2.i59, i64 -8   ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.co = and i64 %i.cn, 3
  %i.cp = or i64 %i.co, %i.cg
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !27
  %i.cq = getelementptr i8, ptr %i.cd, i64 7672
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !30
  %i.cs = xor i32 %i.cr, 1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = ptrtoint ptr %i.ce to i64
  %i.cv = or i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.cb, align 8, !tbaa !29
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !27
  %i.cw = getelementptr i8, ptr %i.cd, i64 7428   ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !34
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !34
  %i.cz = getelementptr i8, ptr %i.cd, i64 7656   ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !35
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !35
  %i.dc = getelementptr i8, ptr %i.cd, i64 7424
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !36
  %i.de = icmp sgt i32 %i.cy, %i.dd
  br i1 %i.de, label %bb.u, label %_Py_NewRef.exit

bb.u:                                             ; preds = %._crit_edge
  %i.df = getelementptr i8, ptr %i.cd, i64 7400
  call void @_Py_TriggerGC(ptr noundef %i.df) #9
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %.critedge.thread.i, %bb.u, %._crit_edge, %bb.n, %bb.m, %bb.i, %tuple_alloc.exit, %bb.h
  %.2 = phi ptr [ null, %bb.h ], [ null, %tuple_alloc.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.i ], [ %.2.i59, %bb.u ], [ %0, %bb.m ], [ %0, %bb.n ], [ %.2.i59, %._crit_edge ], [ null, %.critedge.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %tuple_item.exit

bb.v:                                             ; preds = %_PyIndex_Check.exit.thread
  %i.dg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  %i.dh = getelementptr i8, ptr %.val50, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79
  %i.dj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dg, ptr noundef nonnull @.str.10, ptr noundef %i.di) #9 ; 0 uses
  br label %tuple_item.exit

tuple_item.exit:                                  ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.v, %_Py_NewRef.exit
  %.3 = phi ptr [ null, %bb.v ], [ %.2, %_Py_NewRef.exit ], [ null, %bb.c ], [ null, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  ret ptr %.3
}

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare i32 @PySlice_Unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PySlice_AdjustIndices(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @tuple___getnewargs__(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %.val.i, i64 0)
  %i.b = icmp sgt i64 %.val.i, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val20.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %.val20.i.i, @PyTuple_Type
  br i1 %.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %tuple___getnewargs___impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %0, align 8, !tbaa !46
  br label %tuple___getnewargs___impl.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = tail call ptr @PyTuple_FromArray(ptr noundef %i.g, i64 noundef %spec.select.i.i), !inline_history !91
  br label %tuple___getnewargs___impl.exit

tuple___getnewargs___impl.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.016.i.i = phi ptr [ %i.h, %bb.e ], [ %0, %bb.c ], [ %0, %bb.d ]
  %i.i = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.17, ptr noundef %.016.i.i) #9, !inline_history !92
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_index(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !59
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.12, i64 noundef %2, i64 noundef 1, i64 noundef 3) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %tuple_index_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %._crit_edge18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.h, ptr noundef nonnull %i.a) #9
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %tuple_index_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %._crit_edge18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #9
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %tuple_index_impl.exit, label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.f, %bb.e, %bb.c
  %3 = load i64, ptr %i.a, align 8, !tbaa !59     ; 3 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.o = icmp slt i64 %3, 0
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val32.i = load i64, ptr %i.p, align 8, !tbaa !45 ; 3 uses
  %i.q = add i64 %.val32.i, %3
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.q, i64 0)
  %.024.i = select i1 %i.o, i64 %spec.store.select.i, i64 %3 ; 2 uses
  %i.r = icmp slt i64 %i.n, 0
  %i.s = add i64 %.val32.i, %i.n
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.n, i64 %.val32.i)
  %.023.i = select i1 %i.r, i64 %i.s, i64 %spec.select.i ; 2 uses
  %i.t = icmp slt i64 %.024.i, %.023.i
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge18
  %i.u = getelementptr i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %.02237.i = phi i64 [ %.024.i, %.lr.ph.i ], [ %i.aa, %bb.i ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.02237.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = call i32 @PyObject_RichCompareBool(ptr noundef %i.w, ptr noundef %i.e, i32 noundef 2) #9 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.z = call ptr @PyLong_FromSsize_t(i64 noundef %.02237.i) #9
  br label %tuple_index_impl.exit

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.i, label %tuple_index_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = add nuw i64 %.02237.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %.023.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !93

._crit_edge.i:                                    ; preds = %bb.i, %._crit_edge18
  %i.ab = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.ab, ptr noundef nonnull @.str.18) #9
  br label %tuple_index_impl.exit

tuple_index_impl.exit:                            ; preds = %bb.h, %._crit_edge.i, %.thread.i, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ %i.z, %.thread.i ], [ null, %._crit_edge.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tuple_count(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val18.i = load i64, ptr %i.a, align 8, !tbaa !45
  %i.b = icmp sgt i64 %.val18.i, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.01220.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.c ] ; 2 uses
  %.01319.i = phi i64 [ 0, %.lr.ph.i ], [ %.215.i, %bb.c ]
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.01220.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.e, ptr noundef %1, i32 noundef 2) #9 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %tuple_count_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i32 %i.f, 0
  %i.i = zext i1 %i.h to i64
  %.215.i = add i64 %.01319.i, %i.i               ; 2 uses
  %i.j = add nuw nsw i64 %.01220.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !45
  %i.k = icmp slt i64 %i.j, %.val.i
  br i1 %i.k, label %bb.b, label %._crit_edge.i, !llvm.loop !94

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.215.i, %bb.c ]
  %i.l = tail call ptr @PyLong_FromSsize_t(i64 noundef %.013.lcssa.i) #9
  br label %tuple_count_impl.exit

tuple_count_impl.exit:                            ; preds = %bb.b, %._crit_edge.i
  %.2.i = phi ptr [ %i.l, %._crit_edge.i ], [ null, %bb.b ]
  ret ptr %.2.i
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyEval_SliceIndexNotNone(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tuple_new_impl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, @PyTuple_Type
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %tuple_new_impl.exit.thread, label %tuple_new_impl.exit

tuple_new_impl.exit:                              ; preds = %bb.b
  %i.b = tail call ptr @PySequence_Tuple(ptr noundef nonnull %1) #9, !inline_history !95 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %tuple_subtype_new.exit, label %tuple_new_impl.exit.thread

tuple_new_impl.exit.thread:                       ; preds = %bb.b, %tuple_new_impl.exit
  %.0.i810 = phi ptr [ %i.b, %tuple_new_impl.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.b ] ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = getelementptr i8, ptr %.0.i810, i64 16
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !45 ; 6 uses
  %i.g = tail call ptr %i.e(ptr noundef %0, i64 noundef %.val.i) #9, !inline_history !97 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %tuple_new_impl.exit.thread
  %i.i = icmp sgt i64 %.val.i, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr i8, ptr %.0.i810, i64 32   ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  %xtraiter = and i64 %.val.i, 1
  %i.l = icmp eq i64 %.val.i, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.val.i, 9223372036854775806
  br label %bb.f

bb.c:                                             ; preds = %tuple_new_impl.exit.thread
  %i.m = load i32, ptr %.0.i810, align 8, !tbaa !46 ; 2 uses
  %.not.i23.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i23.i, label %bb.d, label %tuple_subtype_new.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %.0.i810, align 8, !tbaa !46
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %tuple_subtype_new.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i810) #9, !inline_history !97
  br label %tuple_subtype_new.exit

bb.f:                                             ; preds = %_Py_NewRef.exit.1, %.lr.ph.new
  %.020.i12 = phi i64 [ 0, %.lr.ph.new ], [ %i.ac, %_Py_NewRef.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_Py_NewRef.exit.1 ]
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.020.i12
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.q, align 8, !tbaa !46
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.g
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %.020.i12
  store ptr %i.q, ptr %i.u, align 8, !tbaa !25
  %i.v = or disjoint i64 %.020.i12, 1             ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_NewRef.exit.1, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !46
  br label %_Py_NewRef.exit.1

_Py_NewRef.exit.1:                                ; preds = %bb.h, %_Py_NewRef.exit
  %i.ab = getelementptr [8 x i8], ptr %i.k, i64 %i.v
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !25
  %i.ac = add nuw nsw i64 %.020.i12, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !98

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_Py_NewRef.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.020.i12.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %.val.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ad = getelementptr [8 x i8], ptr %i.j, i64 %.020.i12.epil.init
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %_Py_NewRef.exit.epil, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
end_hunk_0
