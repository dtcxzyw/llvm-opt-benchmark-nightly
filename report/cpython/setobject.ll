Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/setobject?download=true
inline.NumInlined: 372
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_PyErr_SetKeyError
declare void @_PyErr_SetKeyError(ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @_PyArg_NoKwnames(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @frozenset___contains__(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 !guid !313 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %.val.i.i, @PyUnicode_Type
  br i1 %.not.i.i, label %bb.b, label %_PyObject_HashFast.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 24
  %.val8.i.i = load i64, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %.not7.not.i.i = icmp eq i64 %.val8.i.i, -1
  br i1 %.not7.not.i.i, label %_PyObject_HashFast.exit.i, label %_PyObject_HashFast.exit.thread.i

_PyObject_HashFast.exit.i:                        ; preds = %bb.b, %bb.a
  %i.c = tail call i64 @PyObject_Hash(ptr noundef nonnull %1) #12, !inline_history !312 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %_PyObject_HashFast.exit.thread.i

bb.c:                                             ; preds = %_PyObject_HashFast.exit.i
  %.val18.i = load ptr, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %.not.i = icmp eq ptr %.val18.i, @PySet_Type
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val18.i, ptr noundef nonnull @PySet_Type) #12, !inline_history !312
  %.not16.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !113
  %i.g = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.f) #12, !inline_history !312
  %.not17.i = icmp eq i32 %i.g, 0
  br i1 %.not17.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call ptr @PyErr_GetRaisedException() #12, !inline_history !312 ; 6 uses
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !113 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val.i19.i = load ptr, ptr %i.j, align 8, !tbaa !107
  %.not.i20.i = icmp eq ptr %.val.i19.i, %i.i
  br i1 %.not.i20.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyErr_SetRaisedException(ptr noundef nonnull %i.h) #12, !inline_history !312
  br label %frozenset___contains___impl.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef nonnull %i.h) #12, !inline_history !312 ; 0 uses
  %i.l = load i32, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i.i, label %bb.i, label %frozenset___contains___impl.exit

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.h, align 8, !tbaa !114
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %frozenset___contains___impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #12, !inline_history !312
  br label %frozenset___contains___impl.exit

bb.k:                                             ; preds = %bb.e
  tail call void @PyErr_Clear() #12, !inline_history !312
  %i.o = getelementptr i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 3 uses
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !117  ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %.not24.i.i = icmp ugt ptr %i.p, %i.s
  br i1 %.not24.i.i, label %frozenset_hash_impl.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.p, %bb.k ] ; 2 uses
  %.02125.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ 0, %bb.k ]
  %i.t = getelementptr i8, ptr %.026.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !119  ; 2 uses
  %i.v = shl i64 %i.u, 16
  %i.w = xor i64 %i.u, %i.v
  %i.x = xor i64 %i.w, 89869747
  %i.y = mul i64 %i.x, 3644798167
  %i.z = xor i64 %i.y, %.02125.i.i                ; 2 uses
  %i.aa = getelementptr i8, ptr %.026.i.i, i64 16 ; 2 uses
  %.not.i21.i = icmp ugt ptr %i.aa, %i.s
  br i1 %.not.i21.i, label %frozenset_hash_impl.exit.i, label %.lr.ph.i.i, !llvm.loop !0

frozenset_hash_impl.exit.i:                       ; preds = %.lr.ph.i.i, %bb.k
  %.021.lcssa.i.i = phi i64 [ 0, %bb.k ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %i.ad = add i64 %i.ac, %i.r
  %i.ae = and i64 %i.ad, 1
  %.not22.not.i.i = icmp eq i64 %i.ae, 0
  %i.af = xor i64 %.021.lcssa.i.i, 327557089134353749
  %spec.select.i.i = select i1 %.not22.not.i.i, i64 %i.af, i64 %.021.lcssa.i.i ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !123 ; 2 uses
  %i.ai = sub i64 %i.ac, %i.ah
  %i.aj = and i64 %i.ai, 1
  %.not23.i.i = icmp eq i64 %i.aj, 0
  %i.ak = xor i64 %spec.select.i.i, 327650953621548500
  %.2.i.i = select i1 %.not23.i.i, i64 %spec.select.i.i, i64 %i.ak
  %i.al = mul i64 %i.ah, 1927868237
  %i.am = add i64 %i.al, 1927868237
  %i.an = xor i64 %.2.i.i, %i.am                  ; 3 uses
  %i.ao = lshr i64 %i.an, 11
  %i.ap = lshr i64 %i.an, 25
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = xor i64 %i.aq, %i.an
  %i.as = mul i64 %i.ar, 69069
  %i.at = add i64 %i.as, 907133923                ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  %spec.store.select.i.i = select i1 %i.au, i64 590923713, i64 %i.at
  br label %_PyObject_HashFast.exit.thread.i

_PyObject_HashFast.exit.thread.i:                 ; preds = %frozenset_hash_impl.exit.i, %_PyObject_HashFast.exit.i, %bb.b
  %.0.i = phi i64 [ %spec.store.select.i.i, %frozenset_hash_impl.exit.i ], [ %i.c, %_PyObject_HashFast.exit.i ], [ %.val8.i.i, %bb.b ] ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !116
  %i.ax = getelementptr i8, ptr %0, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !117 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_PyObject_HashFast.exit.thread.i
  %.025.i.i = phi i64 [ %.0.i, %_PyObject_HashFast.exit.thread.i ], [ %i.bl, %bb.p ]
  %.pn.i.i = phi i64 [ %.0.i, %_PyObject_HashFast.exit.thread.i ], [ %i.bo, %bb.p ]
  %.024.i.i = and i64 %.pn.i.i, %i.ay             ; 3 uses
  %i.az = getelementptr [16 x i8], ptr %i.aw, i64 %.024.i.i
  %i.ba = add i64 %.024.i.i, 9
  %.not.i22.i = icmp ugt i64 %i.ba, %i.ay
  %i.bb = select i1 %.not.i22.i, i32 0, i32 9
  br label %bb.m

bb.m:                                             ; preds = %set_compare_frozenset.exit.thread28.i, %bb.l
  %.026.i23.i = phi ptr [ %i.az, %bb.l ], [ %i.bj, %set_compare_frozenset.exit.thread28.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.bk, %set_compare_frozenset.exit.thread28.i ] ; 2 uses
  %i.bc = load ptr, ptr %.026.i23.i, align 8, !tbaa !120 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %set_do_lookup.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq ptr %i.bc, %1
  br i1 %i.be, label %set_do_lookup.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %.026.i23.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !119
  %i.bh = icmp eq i64 %i.bg, %.0.i
  br i1 %i.bh, label %set_compare_frozenset.exit.i, label %set_compare_frozenset.exit.thread28.i

set_compare_frozenset.exit.i:                     ; preds = %bb.o
  %i.bi = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.bc, ptr noundef %1, i32 noundef 2) #12, !inline_history !312 ; 3 uses
  %cond.i = icmp eq i32 %i.bi, 0
  br i1 %cond.i, label %set_compare_frozenset.exit.thread28.i, label %set_do_lookup.exit.i

set_compare_frozenset.exit.thread28.i:            ; preds = %set_compare_frozenset.exit.i, %bb.o
  %i.bj = getelementptr i8, ptr %.026.i23.i, i64 16
  %i.bk = add nsw i32 %.0.i.i, -1
  %.not30.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not30.i.i, label %bb.p, label %bb.m, !llvm.loop !7

bb.p:                                             ; preds = %set_compare_frozenset.exit.thread28.i
  %i.bl = lshr i64 %.025.i.i, 5                   ; 2 uses
  %i.bm = mul i64 %.024.i.i, 5
  %i.bn = add nuw nsw i64 %i.bl, 1
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.l

set_do_lookup.exit.i:                             ; preds = %set_compare_frozenset.exit.i
  %i.bp = icmp slt i32 %i.bi, 0
  br i1 %i.bp, label %frozenset___contains___impl.exit, label %set_do_lookup.exit.thread.i

set_do_lookup.exit.thread.i:                      ; preds = %bb.n, %bb.m, %set_do_lookup.exit.i
  %.027.i33.i = phi i32 [ %i.bi, %set_do_lookup.exit.i ], [ 0, %bb.m ], [ 1, %bb.n ]
  %i.bq = zext nneg i32 %.027.i33.i to i64
  %i.br = tail call ptr @PyBool_FromLong(i64 noundef %i.bq) #12, !inline_history !312
  br label %frozenset___contains___impl.exit

frozenset___contains___impl.exit:                 ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %set_do_lookup.exit.i, %set_do_lookup.exit.thread.i
  %.1.i = phi ptr [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ %i.br, %set_do_lookup.exit.thread.i ], [ null, %set_do_lookup.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @frozenset_copy(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 !guid !317 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !107 ; 3 uses
  %.not.i = icmp eq ptr %.val.i, @PyFrozenSet_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !114    ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %frozenset_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !114
  br label %frozenset_copy_impl.exit

bb.d:                                             ; preds = %bb.a
  %.not4.i = icmp eq ptr %.val.i, @PySet_Type
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PySet_Type) #12, !inline_history !314
  %.not.i8.i.i = icmp eq i32 %i.e, 0
  %PyFrozenSet_Type.PySet_Type.i.i.i = select i1 %.not.i8.i.i, ptr @PyFrozenSet_Type, ptr @PySet_Type
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %PyFrozenSet_Type.PySet_Type.i.i.i, %bb.e ], [ @PySet_Type, %bb.d ] ; 2 uses
  %i.f = getelementptr i8, ptr %.0.i.i.i, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.h = tail call ptr %i.g(ptr noundef nonnull %.0.i.i.i, i64 noundef 0) #12, !inline_history !315 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %frozenset_copy_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %i.k = getelementptr i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.k, align 8, !tbaa !117
  %i.l = getelementptr i8, ptr %i.h, i64 64
  %i.m = getelementptr i8, ptr %i.h, i64 40
  store ptr %i.l, ptr %i.m, align 8, !tbaa !116
  %i.n = getelementptr i8, ptr %i.h, i64 48
  store i64 -1, ptr %i.n, align 8, !tbaa !149
  %i.o = getelementptr i8, ptr %i.h, i64 56
  store i64 0, ptr %i.o, align 8, !tbaa !153
  %i.p = getelementptr i8, ptr %i.h, i64 192
  store ptr null, ptr %i.p, align 8, !tbaa !140
  %i.q = tail call fastcc i32 @set_merge_lock_held(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %0), !inline_history !316
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %frozenset_copy_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i.i, label %bb.i, label %frozenset_copy_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.h, align 8, !tbaa !114
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %frozenset_copy_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #12, !inline_history !316
  br label %frozenset_copy_impl.exit

frozenset_copy_impl.exit:                         ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ null, %bb.j ], [ %i.h, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_new_frozenset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !guid !318 {
bb.a:
  %.not = icmp eq ptr %0, @PyFrozenSet_Type
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #12, !inline_history !4 ; 14 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %make_new_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = getelementptr i8, ptr %i.c, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr i8, ptr %i.c, i64 64
  %i.h = getelementptr i8, ptr %i.c, i64 40
  store ptr %i.g, ptr %i.h, align 8, !tbaa !116
  %i.i = getelementptr i8, ptr %i.c, i64 48
  store i64 -1, ptr %i.i, align 8, !tbaa !149
  %i.j = getelementptr i8, ptr %i.c, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !153
  %i.k = getelementptr i8, ptr %i.c, i64 192
  store ptr null, ptr %i.k, align 8, !tbaa !140
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %make_new_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @set_update_local(ptr noundef nonnull %i.c, ptr noundef nonnull %1), !inline_history !4
  %.not19.i = icmp eq i32 %i.l, 0
  br i1 %.not19.i, label %make_new_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.f, label %make_new_set.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.c, align 8, !tbaa !114
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %make_new_set.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #12, !inline_history !4
  br label %make_new_set.exit

bb.h:                                             ; preds = %bb.a
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %.split, label %bb.j

.split:                                           ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 304
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152
  %i.r = tail call ptr %i.q(ptr noundef nonnull %0, i64 noundef 0) #12, !inline_history !4 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %make_new_set.exit, label %bb.i

bb.i:                                             ; preds = %.split
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %i.u = getelementptr i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr i8, ptr %i.r, i64 64
  %i.w = getelementptr i8, ptr %i.r, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !116
  %i.x = getelementptr i8, ptr %i.r, i64 48
  store i64 -1, ptr %i.x, align 8, !tbaa !149
  %i.y = getelementptr i8, ptr %i.r, i64 56
  store i64 0, ptr %i.y, align 8, !tbaa !153
  %i.z = getelementptr i8, ptr %i.r, i64 192
  store ptr null, ptr %i.z, align 8, !tbaa !140
  br label %make_new_set.exit19

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !107
  %.not27 = icmp eq ptr %.val, @PyFrozenSet_Type
  br i1 %.not27, label %bb.o, label %.split12

.split12:                                         ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 304
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152
  %i.ad = tail call ptr %i.ac(ptr noundef nonnull %0, i64 noundef 0) #12, !inline_history !4 ; 13 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %make_new_set.exit, label %bb.k

bb.k:                                             ; preds = %.split12
  %i.af = getelementptr i8, ptr %i.ad, i64 16
  %i.ag = getelementptr i8, ptr %i.ad, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.ag, align 8, !tbaa !117
  %i.ah = getelementptr i8, ptr %i.ad, i64 64
  %i.ai = getelementptr i8, ptr %i.ad, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !116
  %i.aj = getelementptr i8, ptr %i.ad, i64 48
  store i64 -1, ptr %i.aj, align 8, !tbaa !149
  %i.ak = getelementptr i8, ptr %i.ad, i64 56
  store i64 0, ptr %i.ak, align 8, !tbaa !153
  %i.al = getelementptr i8, ptr %i.ad, i64 192
  store ptr null, ptr %i.al, align 8, !tbaa !140
  %i.am = tail call fastcc i32 @set_update_local(ptr noundef nonnull %i.ad, ptr noundef nonnull %1), !inline_history !4
  %.not19.i21 = icmp eq i32 %i.am, 0
  br i1 %.not19.i21, label %make_new_set.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !114 ; 2 uses
  %.not.i.i22 = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i22, label %bb.m, label %make_new_set.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ad, align 8, !tbaa !114
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %make_new_set.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #12, !inline_history !4
  br label %make_new_set.exit

bb.o:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %1, align 8, !tbaa !114   ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %make_new_set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %1, align 8, !tbaa !114
  br label %make_new_set.exit

make_new_set.exit19:                              ; preds = %bb.i, %bb.k
  %phi.call = phi ptr [ %i.r, %bb.i ], [ %i.ad, %bb.k ] ; 2 uses
  tail call fastcc void @_PyFrozenSet_MaybeUntrack(ptr noundef %phi.call)
  br label %make_new_set.exit

make_new_set.exit:                                ; preds = %bb.m, %bb.l, %bb.n, %.split12, %.split, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %make_new_set.exit19
  %.0 = phi ptr [ %1, %bb.p ], [ null, %bb.g ], [ %phi.call, %make_new_set.exit19 ], [ null, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %1, %bb.o ], [ null, %.split ], [ null, %.split12 ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.m ]
  ret ptr %.0
}

declare i32 @PyObject_IS_GC(ptr noundef) local_unnamed_addr #2

declare void @_Py_TriggerGC(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @dummy_dealloc(ptr nofree readnone captures(none) %0) #8 !guid !319 {
bb.a:
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.dummy_dealloc, ptr noundef nonnull @.str.42) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @dummy_repr(ptr nofree readnone captures(none) %0) #0 !guid !320 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.43) #12
  ret ptr %i.a
end_hunk_0
