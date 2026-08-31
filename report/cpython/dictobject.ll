Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/dictobject?download=true
inline.NumInlined: 780
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@PyDict_Pop:bb.a
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val24.i = load i64, ptr %i.b, align 8, !tbaa !22
  %i.c = and i64 %.val24.i, 536870912
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not21.i = icmp eq ptr %2, null
  br i1 %.not21.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.3, i32 noundef 3209) #21, !inline_history !179
  br label %pop_lock_held.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not23.i = icmp eq ptr %2, null
  br i1 %.not23.i, label %pop_lock_held.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %pop_lock_held.exit

bb.h:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %.val.i.i, @PyUnicode_Type
  br i1 %.not.i.i, label %bb.i, label %_PyObject_HashFast.exit.i

bb.i:                                             ; preds = %bb.h
  %i.h = getelementptr i8, ptr %1, i64 24
  %.val8.i.i = load i64, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %.not7.not.i.i = icmp eq i64 %.val8.i.i, -1
  br i1 %.not7.not.i.i, label %_PyObject_HashFast.exit.i, label %_PyObject_HashFast.exit.thread.i

_PyObject_HashFast.exit.i:                        ; preds = %bb.i, %bb.h
  %i.i = tail call i64 @PyObject_Hash(ptr noundef nonnull %1) #21, !inline_history !179 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.j, label %_PyObject_HashFast.exit.thread.i

bb.j:                                             ; preds = %_PyObject_HashFast.exit.i
  %i.k = tail call ptr @PyErr_GetRaisedException() #21, !inline_history !180 ; 6 uses
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !58 ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %.val.i25.i = load ptr, ptr %i.m, align 8, !tbaa !19
  %.not.i26.i = icmp eq ptr %.val.i25.i, %i.l
  br i1 %.not.i26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @PyErr_SetRaisedException(ptr noundef nonnull %i.k) #21, !inline_history !180
  br label %dict_unhashable_type.exit.i

bb.l:                                             ; preds = %bb.j
  %.val8.i27.i = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %.val8.i27.i, @PyFrozenDict_Type
  br i1 %.not.i9.i.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.l
  %i.n = tail call i32 @PyType_IsSubtype(ptr noundef %.val8.i27.i, ptr noundef nonnull @PyFrozenDict_Type) #21, !inline_history !180
  %.fr.i.i = freeze i32 %i.n
  %.not12.i.i = icmp eq i32 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.not12.i.i, ptr @.str.48, ptr @.str.47
  %.pre.i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !58
  br label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.l
  %i.o = phi ptr [ %i.l, %bb.l ], [ %.pre.i.i, %PyObject_TypeCheck.exit.i.i ]
  %i.p = phi ptr [ @.str.47, %bb.l ], [ %spec.select.i.i, %PyObject_TypeCheck.exit.i.i ]
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %1, ptr noundef nonnull %i.k) #21, !inline_history !180 ; 0 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i.i, label %bb.m, label %dict_unhashable_type.exit.i

bb.m:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.k, align 8, !tbaa !36
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.n, label %dict_unhashable_type.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #21, !inline_history !180
  br label %dict_unhashable_type.exit.i

dict_unhashable_type.exit.i:                      ; preds = %bb.n, %bb.m, %PyObject_TypeCheck.exit.thread.i.i, %bb.k
  %.not22.i = icmp eq ptr %2, null
  br i1 %.not22.i, label %pop_lock_held.exit, label %bb.o

bb.o:                                             ; preds = %dict_unhashable_type.exit.i
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %pop_lock_held.exit

_PyObject_HashFast.exit.thread.i:                 ; preds = %_PyObject_HashFast.exit.i, %bb.i
  %.1.i29.i = phi i64 [ %i.i, %_PyObject_HashFast.exit.i ], [ %.val8.i.i, %bb.i ]
  %i.u = tail call i32 @_PyDict_Pop_KnownHash(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.1.i29.i, ptr noundef %2), !inline_history !179
  br label %pop_lock_held.exit

pop_lock_held.exit:                               ; preds = %bb.d, %bb.f, %bb.g, %dict_unhashable_type.exit.i, %bb.o, %_PyObject_HashFast.exit.thread.i
  %.2.i = phi i32 [ -1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.u, %_PyObject_HashFast.exit.thread.i ], [ -1, %bb.o ], [ -1, %dict_unhashable_type.exit.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyDict_PopString(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef %1) #21 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyDict_Pop(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2) ; 3 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !36
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyDict_Pop(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @PyDict_Pop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a), !inline_history !181
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %dict_pop_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %2, align 8, !tbaa !36
  br label %dict_pop_default.exit

bb.e:                                             ; preds = %bb.b
  call void @_PyErr_SetKeyError(ptr noundef %1) #21, !inline_history !181
  br label %dict_pop_default.exit

bb.f:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !58
  br label %dict_pop_default.exit

dict_pop_default.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.g, %bb.f ], [ null, %bb.e ], [ %2, %bb.c ], [ %2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyDict_FromKeys(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.d = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.d, align 8, !tbaa !22
  %i.e = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !182
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 1 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.b

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.a
  %i.j = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.b, ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit

bb.b:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %3 = inttoptr i64 %.sroa.0.0.copyload.i.i.i to ptr
  %i.k = tail call ptr %3(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, ptr noundef null) #21, !inline_history !183
  %i.l = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.b, ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef null) #21
  br label %_PyObject_CallNoArgs.exit

_PyObject_CallNoArgs.exit:                        ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.j, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.l, %bb.b ] ; 13 uses
  %i.m = icmp eq ptr %.0.i.i, null
  br i1 %i.m, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.n = getelementptr i8, ptr %.0.i.i, i64 8
  %.val148 = load ptr, ptr %i.n, align 8, !tbaa !19 ; 2 uses
  %.not.i149 = icmp eq ptr %.val148, @PyFrozenDict_Type
  br i1 %.not.i149, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.c
  %i.o = tail call i32 @PyType_IsSubtype(ptr noundef %.val148, ptr noundef nonnull @PyFrozenDict_Type) #21
  %.not155 = icmp eq i32 %i.o, 0
  br i1 %.not155, label %Py_DECREF.exit122, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.c, %PyObject_TypeCheck.exit
  %i.p = getelementptr i8, ptr %0, i64 312
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !184
  %.not93 = icmp eq ptr %i.q, @frozendict_new
  br i1 %.not93, label %Py_DECREF.exit122, label %bb.d

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.r = tail call i32 @PyObject_IsSubclass(ptr noundef nonnull %0, ptr noundef nonnull @PyFrozenDict_Type) #21
  %.not94 = icmp eq i32 %i.r, 0
  %i.s = getelementptr i8, ptr %0, i64 304
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i64 noundef 0) #21 ; 19 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not94, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.v, label %frozendict_new.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %i.x = getelementptr i8, ptr %i.u, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store ptr @empty_keys_struct, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr i8, ptr %i.u, i64 40
  store ptr null, ptr %i.y, align 8, !tbaa !35
  %i.z = getelementptr i8, ptr %i.u, i64 -16      ; 3 uses
  %.val.i.i = load i64, ptr %i.z, align 8, !tbaa !66
  %.not13.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not13.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 7 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 7408
  %i.ad = getelementptr i8, ptr %i.ab, i64 7416   ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !64 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !66
  %i.ai = and i64 %i.ah, 3
  %i.aj = or i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !66
  %i.ak = getelementptr i8, ptr %i.u, i64 -8      ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.am = and i64 %i.al, 3
  %i.an = or i64 %i.am, %i.ae
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !64
  %i.ao = getelementptr i8, ptr %i.ab, i64 7672
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !67
  %i.aq = xor i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = ptrtoint ptr %i.ac to i64
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.z, align 8, !tbaa !66
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !64
  %i.au = getelementptr i8, ptr %i.ab, i64 7428   ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !71
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !71
  %i.ax = getelementptr i8, ptr %i.ab, i64 7656   ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !72
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !72
  %i.ba = getelementptr i8, ptr %i.ab, i64 7424
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !73
  %i.bc = icmp sgt i32 %i.aw, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr i8, ptr %i.ab, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bd) #21, !inline_history !186
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.be = getelementptr i8, ptr %i.u, i64 48
  store i64 -1, ptr %i.be, align 8, !tbaa !187
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  br i1 %i.v, label %frozendict_new.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.u, i64 16
  %i.bg = getelementptr i8, ptr %i.u, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store ptr @empty_keys_struct, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr i8, ptr %i.u, i64 40
  store ptr null, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr i8, ptr %i.u, i64 -16     ; 3 uses
  %.val.i = load i64, ptr %i.bi, align 8, !tbaa !66
  %.not13.i = icmp eq i64 %.val.i, 0
  br i1 %.not13.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 7 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 7408
  %i.bm = getelementptr i8, ptr %i.bk, i64 7416   ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !64 ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !66
  %i.br = and i64 %i.bq, 3
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !66
  %i.bt = getelementptr i8, ptr %i.u, i64 -8      ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !64
  %i.bv = and i64 %i.bu, 3
  %i.bw = or i64 %i.bv, %i.bn
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !64
  %i.bx = getelementptr i8, ptr %i.bk, i64 7672
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !67
  %i.bz = xor i32 %i.by, 1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = ptrtoint ptr %i.bl to i64
  %i.cc = or i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.bi, align 8, !tbaa !66
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !64
  %i.cd = getelementptr i8, ptr %i.bk, i64 7428   ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !71
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !71
  %i.cg = getelementptr i8, ptr %i.bk, i64 7656   ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !72
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !72
  %i.cj = getelementptr i8, ptr %i.bk, i64 7424
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !73
  %i.cl = icmp sgt i32 %i.cf, %i.ck
  br i1 %i.cl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr i8, ptr %i.bk, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.cm) #21
  br label %bb.p

frozendict_new.exit:                              ; preds = %bb.e, %bb.j
  %i.cn = load i32, ptr %.0.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i127 = icmp sgt i32 %i.cn, -1
  br i1 %.not.i127, label %bb.n, label %.critedge

bb.n:                                             ; preds = %frozendict_new.exit
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %.0.i.i, align 8, !tbaa !36
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #21
  br label %.critedge

bb.p:                                             ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  %i.cq = tail call fastcc i32 @dict_merge(ptr noundef nonnull %i.u, ptr noundef nonnull %.0.i.i, i32 noundef 1)
  %i.cr = icmp slt i32 %i.cq, 0
  %i.cs = load i32, ptr %.0.i.i, align 8, !tbaa !36 ; 3 uses
  %.not.i125 = icmp sgt i32 %i.cs, -1             ; 2 uses
  br i1 %i.cr, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i125, label %bb.r, label %Py_DECREF.exit126

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %.0.i.i, align 8, !tbaa !36
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.s, label %Py_DECREF.exit126

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #21
  br label %Py_DECREF.exit126

Py_DECREF.exit126:                                ; preds = %bb.q, %bb.r, %bb.s
  %i.cv = load i32, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not.i123 = icmp sgt i32 %i.cv, -1
  br i1 %.not.i123, label %bb.t, label %.critedge

bb.t:                                             ; preds = %Py_DECREF.exit126
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.u, align 8, !tbaa !36
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.u, label %.critedge
end_hunk_0
