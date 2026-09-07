Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_PyList_AppendTakeRefListResize:bb.a
  %i.u = icmp slt i64 %i.b, %i.d
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread.i
  store i64 %i.b, ptr %i.a, align 8, !tbaa !33
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr %i.s, ptr %i.q, align 8, !tbaa !31
  store i64 %i.b, ptr %i.a, align 8, !tbaa !33
  store i64 %.1.i, ptr %i.c, align 8, !tbaa !34
  br label %bb.j

bb.g:                                             ; preds = %.thread.i
  %i.v = tail call ptr @PyErr_NoMemory() #13      ; 0 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !32     ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %1, align 8, !tbaa !32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #13
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.b, %bb.e, %bb.f
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %.val
  store ptr %1, ptr %i.ab, align 8, !tbaa !54
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @list_resize(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not = icmp slt i64 %i.b, %1
  %i.c = ashr i64 %i.b, 1
  %.not36 = icmp slt i64 %1, %i.c
  %or.cond = or i1 %.not, %.not36
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  store i64 %1, ptr %i.d, align 8, !tbaa !33
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = ashr i64 %1, 3
  %i.f = add i64 %1, 6
  %i.g = add i64 %i.f, %i.e
  %i.h = and i64 %i.g, -4                         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val = load i64, ptr %i.i, align 8, !tbaa !33
  %i.j = sub i64 %1, %.val
  %i.k = sub i64 %i.h, %1
  %i.l = icmp sgt i64 %i.j, %i.k
  %i.m = add i64 %1, 3
  %i.n = and i64 %i.m, -4
  %.031 = select i1 %i.l, i64 %i.n, i64 %i.h
  %i.o = icmp eq i64 %1, 0
  %.1 = select i1 %i.o, i64 0, i64 %.031          ; 3 uses
  %i.p = icmp ult i64 %.1, 1152921504606846976
  br i1 %i.p, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = shl nuw nsw i64 %.1, 3
  %i.r = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = tail call ptr @PyMem_Realloc(ptr noundef %i.s, i64 noundef %i.q) #13 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.c, %bb.d
  %i.v = icmp slt i64 %1, %i.b
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  store i64 %1, ptr %i.i, align 8, !tbaa !33
  br label %bb.h

bb.f:                                             ; preds = %.thread
  %i.w = tail call ptr @PyErr_NoMemory() #13      ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store ptr %i.t, ptr %i.r, align 8, !tbaa !31
  store i64 %1, ptr %i.i, align 8, !tbaa !33
  store i64 %.1, ptr %i.a, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.b
  %.133 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ -1, %bb.f ], [ 0, %bb.g ]
  ret i32 %.133
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyList_Append(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !53
  %i.c = and i64 %.val7, 33554432
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %1, align 8, !tbaa !32
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !33 ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = icmp sgt i64 %i.k, %.val.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Py_NewRef.exit
  %i.m = getelementptr i8, ptr %0, i64 24
  %.val12.i = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr [8 x i8], ptr %.val12.i, i64 %.val.i
  store ptr %1, ptr %i.n, align 8, !tbaa !54
  %i.o = add nsw i64 %.val.i, 1
  store i64 %i.o, ptr %i.i, align 8, !tbaa !33
  br label %_PyList_AppendTakeRef.exit

bb.e:                                             ; preds = %_Py_NewRef.exit
  %i.p = tail call i32 @_PyList_AppendTakeRefListResize(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %_PyList_AppendTakeRef.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 548) #13
  br label %_PyList_AppendTakeRef.exit

_PyList_AppendTakeRef.exit:                       ; preds = %bb.e, %bb.d, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ 0, %bb.d ], [ %i.p, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyList_BinarySlice(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !55
  %i.c = call i32 @_PyEval_SliceIndex(ptr noundef %1, ptr noundef nonnull %i.a) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @_PyEval_SliceIndex(ptr noundef %2, ptr noundef nonnull %i.b) #13
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !33
  %i.f = call i64 @PySlice_AdjustIndices(i64 noundef %.val, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 1) #13 ; 0 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !55
  %i.h = load i64, ptr %i.b, align 8, !tbaa !55
  %i.i = call fastcc ptr @list_slice_lock_held(ptr noundef %0, i64 noundef %i.g, i64 noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

declare i32 @_PyEval_SliceIndex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PySlice_AdjustIndices(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @list_slice_lock_held(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = sub i64 %2, %1                           ; 8 uses
  %i.b = icmp slt i64 %i.a, 1
  %i.c = tail call ptr @PyList_New(i64 noundef 0) ; 9 uses
  br i1 %i.b, label %list_new_prealloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %list_new_prealloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %i.a, 1152921504606846975
  br i1 %i.e, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.c, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.a, 3
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %i.g) #13, !inline_history !88 ; 3 uses
  %i.i = getelementptr i8, ptr %i.c, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.e, label %list_new_prealloc.exit.thread23

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.k = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i, label %bb.f, label %list_new_prealloc.exit

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.c, align 8, !tbaa !32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %list_new_prealloc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #13, !inline_history !88
  br label %list_new_prealloc.exit

list_new_prealloc.exit.thread23:                  ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.c, i64 32
  store i64 %i.a, ptr %i.n, align 8, !tbaa !34
  br label %.lr.ph.preheader

list_new_prealloc.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %i.o = tail call ptr @PyErr_NoMemory() #13, !inline_history !88 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %list_new_prealloc.exit.thread, label %list_new_prealloc.exit._crit_edge

list_new_prealloc.exit._crit_edge:                ; preds = %list_new_prealloc.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.o, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %list_new_prealloc.exit.thread23, %list_new_prealloc.exit._crit_edge
  %i.q = phi ptr [ %i.h, %list_new_prealloc.exit.thread23 ], [ %.pre, %list_new_prealloc.exit._crit_edge ] ; 3 uses
  %.0.i25 = phi ptr [ %i.c, %list_new_prealloc.exit.thread23 ], [ %i.o, %list_new_prealloc.exit._crit_edge ] ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %1 ; 3 uses
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.a, 1
  %i.u = icmp eq i64 %2, %.neg
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %_Py_NewRef.exit.1, %.lr.ph.preheader.new
  %.01926 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %_Py_NewRef.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_Py_NewRef.exit.1 ]
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.01926
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = icmp ugt i32 %i.x, -1073741825
  br i1 %i.y, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %i.x, 1
  store i32 %i.z, ptr %i.w, align 8, !tbaa !32
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %.lr.ph, %bb.h
  %i.aa = getelementptr [8 x i8], ptr %i.q, i64 %.01926
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !54
  %i.ab = or disjoint i64 %.01926, 1              ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, -1073741825
  br i1 %i.af, label %_Py_NewRef.exit.1, label %bb.i

bb.i:                                             ; preds = %_Py_NewRef.exit
  %i.ag = add nuw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.ad, align 8, !tbaa !32
  br label %_Py_NewRef.exit.1

_Py_NewRef.exit.1:                                ; preds = %bb.i, %_Py_NewRef.exit
  %i.ah = getelementptr [8 x i8], ptr %i.q, i64 %i.ab
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !54
  %i.ai = add nuw nsw i64 %.01926, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !89

._crit_edge.unr-lcssa:                            ; preds = %_Py_NewRef.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.01926.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.aj = getelementptr [8 x i8], ptr %i.t, i64 %.01926.epil.init
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_Py_NewRef.exit.epil, label %bb.j

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !32
  br label %_Py_NewRef.exit.epil

_Py_NewRef.exit.epil:                             ; preds = %bb.j, %.lr.ph.epil.preheader
  %i.ao = getelementptr [8 x i8], ptr %i.q, i64 %.01926.epil.init
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %_Py_NewRef.exit.epil
  %i.ap = getelementptr i8, ptr %.0.i25, i64 16
  store i64 %i.a, ptr %i.ap, align 8, !tbaa !33
  br label %list_new_prealloc.exit.thread

list_new_prealloc.exit.thread:                    ; preds = %bb.a, %bb.b, %list_new_prealloc.exit, %._crit_edge
  %.0 = phi ptr [ null, %bb.b ], [ %.0.i25, %._crit_edge ], [ null, %list_new_prealloc.exit ], [ %i.c, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyList_GetSlice(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr i8, ptr %.val22, i64 168
  %.val23 = load i64, ptr %i.b, align 8, !tbaa !53
  %i.c = and i64 %.val23, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 747) #13
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val21 = load i64, ptr %i.e, align 8, !tbaa !33
  %spec.select = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val21)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015 = phi i64 [ %spec.select, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.f = icmp slt i64 %2, %.015
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.g, align 8, !tbaa !33
  %spec.select24 = tail call i64 @llvm.smin.i64(i64 %2, i64 %.val19)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %spec.select24, %bb.f ], [ %.015, %bb.e ]
  %i.h = tail call fastcc ptr @list_slice_lock_held(ptr noundef nonnull %0, i64 noundef %.015, i64 noundef %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.016 = phi ptr [ %i.h, %bb.g ], [ null, %bb.b ]
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyList_SetSlice(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val5 = load i64, ptr %i.b, align 8, !tbaa !53
  %i.c = and i64 %.val5, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 1074) #13
  br label %list_ass_slice.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, %3
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !33
  %i.f = tail call fastcc ptr @list_slice_lock_held(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %.val.i) ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %list_ass_slice.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call fastcc i32 @list_ass_slice_lock_held(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.f) ; 3 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.f, label %list_ass_slice.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.f, align 8, !tbaa !32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %list_ass_slice.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #13
  br label %list_ass_slice.exit

bb.h:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.h
  %i.l = tail call fastcc i32 @list_ass_slice_lock_held(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef null)
  br label %list_ass_slice.exit

bb.i:                                             ; preds = %bb.h
  %i.m = tail call fastcc i32 @list_ass_slice_lock_held(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  br label %list_ass_slice.exit

list_ass_slice.exit:                              ; preds = %bb.i, %.split.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %i.m, %bb.i ], [ %i.l, %.split.i ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyList_Extend(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_list_extend(ptr noundef %0, ptr noundef %1), !inline_history !90
  %i.b = icmp slt i32 %i.a, 0
  %._Py_NoneStruct.i.i = select i1 %i.b, ptr null, ptr @_Py_NoneStruct
  ret ptr %._Py_NoneStruct.i.i
}

; Function Attrs: nounwind uwtable
define internal ptr @list_extend(ptr nofree noundef captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_list_extend(ptr noundef %0, ptr noundef %1), !inline_history !91
  %i.b = icmp slt i32 %i.a, 0
  %._Py_NoneStruct.i = select i1 %i.b, ptr null, ptr @_Py_NoneStruct
  ret ptr %._Py_NoneStruct.i
}

end_hunk_0
