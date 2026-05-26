inline.NumInlined: 372
inline.NumDeleted: 69
begin_hunk_0_@setiter_reduce:bb.a

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #2

declare ptr @PySequence_List(ptr noundef) local_unnamed_addr #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

declare ptr @_PyEval_GetBuiltin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @set_lookkey(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq ptr %.val, @PyFrozenSet_Type
  %i.b = getelementptr i8, ptr %0, i64 40         ; 3 uses
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr i8, ptr %1, i64 56
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.026.i = phi i64 [ %2, %bb.b ], [ %i.w, %bb.g ]
  %.pn.i = phi i64 [ %2, %bb.b ], [ %i.z, %bb.g ]
  %.025.i = and i64 %.pn.i, %i.j                  ; 3 uses
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %.025.i
  %i.l = add i64 %.025.i, 9
  %.not.i = icmp ugt i64 %i.l, %i.j
  %i.m = select i1 %.not.i, i32 0, i32 9
  br label %bb.d

bb.d:                                             ; preds = %set_compare_frozenset.exit.thread29, %bb.c
  %.027.i = phi ptr [ %i.k, %bb.c ], [ %i.u, %set_compare_frozenset.exit.thread29 ] ; 5 uses
  %.024.i = phi i32 [ %i.m, %bb.c ], [ %i.v, %set_compare_frozenset.exit.thread29 ] ; 2 uses
  %i.n = load ptr, ptr %.027.i, align 8, !tbaa !27 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %set_do_lookup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq ptr %i.n, %1
  br i1 %i.p, label %set_do_lookup.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.027.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %set_compare_frozenset.exit, label %set_compare_frozenset.exit.thread29

set_compare_frozenset.exit:                       ; preds = %bb.f
  %i.t = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.n, ptr noundef %1, i32 noundef 2) #12 ; 2 uses
  %cond45 = icmp eq i32 %i.t, 0
  br i1 %cond45, label %set_compare_frozenset.exit.thread29, label %set_compare_frozenset.exit.thread.split.loop.exit

set_compare_frozenset.exit.thread.split.loop.exit: ; preds = %set_compare_frozenset.exit
  %..i.le = tail call i32 @llvm.smax.i32(i32 %i.t, i32 -1)
  br label %set_do_lookup.exit.sink.split

set_compare_frozenset.exit.thread29:              ; preds = %set_compare_frozenset.exit, %bb.f
  %i.u = getelementptr i8, ptr %.027.i, i64 16
  %i.v = add nsw i32 %.024.i, -1
  %.not30.i = icmp eq i32 %.024.i, 0
  br i1 %.not30.i, label %bb.g, label %bb.d, !llvm.loop !89

bb.g:                                             ; preds = %set_compare_frozenset.exit.thread29
  %i.w = lshr i64 %.026.i, 5                      ; 2 uses
  %i.x = mul i64 %.025.i, 5
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = add i64 %i.y, %i.x
  br label %bb.c

bb.h:                                             ; preds = %.preheader, %set_do_lookup.exit23
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %bb.h
  %.026.i15 = phi i64 [ %2, %bb.h ], [ %i.bp, %bb.ab ]
  %.pn.i16 = phi i64 [ %2, %bb.h ], [ %i.bs, %bb.ab ]
  %.025.i17 = and i64 %.pn.i16, %i.ab             ; 3 uses
  %i.ac = getelementptr [16 x i8], ptr %i.aa, i64 %.025.i17
  %i.ad = add i64 %.025.i17, 9
  %.not.i18 = icmp ugt i64 %i.ad, %i.ab
  %i.ae = select i1 %.not.i18, i32 0, i32 9
  br label %bb.j

bb.j:                                             ; preds = %set_compare_entry_lock_held.exit.thread35, %bb.i
  %.027.i19 = phi ptr [ %i.ac, %bb.i ], [ %i.bn, %set_compare_entry_lock_held.exit.thread35 ] ; 10 uses
  %.024.i20 = phi i32 [ %i.ae, %bb.i ], [ %i.bo, %set_compare_entry_lock_held.exit.thread35 ] ; 2 uses
  %i.af = getelementptr i8, ptr %.027.i19, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %.027.i19, align 8, !tbaa !27
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %set_do_lookup.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = icmp eq i64 %i.ag, %2
  br i1 %i.ak, label %bb.m, label %set_compare_entry_lock_held.exit.thread35

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %.027.i19, align 8, !tbaa !27 ; 13 uses
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %set_do_lookup.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val34.i = load ptr, ptr %i.an, align 8, !tbaa !11
  %.not.i25 = icmp eq ptr %.val34.i, @PyUnicode_Type
  br i1 %.not.i25, label %bb.o, label %unicode_eq.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %.not40.i = icmp eq ptr %.val.i, @PyUnicode_Type
  br i1 %.not40.i, label %bb.p, label %unicode_eq.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %i.al, i64 16
  %.val15.i.i = load i64, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %.val.i.i = load i64, ptr %i.e, align 8, !tbaa !28
  %.not.i35.i = icmp eq i64 %.val.i.i, %.val15.i.i
  br i1 %.not.i35.i, label %bb.q, label %unicode_eq.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %i.al, i64 32
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.ar = lshr i32 %i.aq, 2
  %i.as = and i32 %i.ar, 7                        ; 2 uses
  %i.at = load i32, ptr %i.f, align 8             ; 3 uses
  %i.au = lshr i32 %i.at, 2
  %i.av = and i32 %i.au, 7
  %.not14.i.i = icmp eq i32 %i.av, %i.as
  br i1 %.not14.i.i, label %bb.r, label %unicode_eq.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.aw = and i32 %i.aq, 32
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = and i32 %i.aq, 64
  %.not.i.i.i.i = icmp eq i32 %i.ax, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.al, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.al, i64 56
  %.val4.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !21
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.s ], [ %.val4.i.i.i, %bb.t ]
  %i.az = and i32 %i.at, 32
  %.not.i17.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i17.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_PyUnicode_DATA.exit.i.i
  %i.ba = and i32 %i.at, 64
  %.not.i.i18.i.i = icmp eq i32 %i.ba, 0
  %.0.v.i.i19.i.i = select i1 %.not.i.i18.i.i, i64 56, i64 40
  %.0.i.i20.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i19.i.i
  br label %unicode_eq.exit.i

bb.v:                                             ; preds = %_PyUnicode_DATA.exit.i.i
  %.val4.i22.i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %unicode_eq.exit.i

unicode_eq.exit.i:                                ; preds = %bb.v, %bb.u
  %.0.i21.i.i = phi ptr [ %.0.i.i20.i.i, %bb.u ], [ %.val4.i22.i.i, %bb.v ]
  %i.bb = zext nneg i32 %i.as to i64
  %i.bc = mul i64 %.val15.i.i, %i.bb
  %bcmp.i.i = tail call i32 @bcmp(ptr %.0.i.i.i, ptr %.0.i21.i.i, i64 %i.bc)
  %.not41.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not41.i, label %set_do_lookup.exit.sink.split, label %unicode_eq.exit.thread.i

unicode_eq.exit.thread.i:                         ; preds = %unicode_eq.exit.i, %bb.q, %bb.p, %bb.o, %bb.n
  %i.bd = load i32, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.be = icmp ugt i32 %i.bd, -1073741825
  br i1 %i.be, label %Py_INCREF.exit.i, label %bb.w

bb.w:                                             ; preds = %unicode_eq.exit.thread.i
  %i.bf = add nuw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.al, align 8, !tbaa !21
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.w, %unicode_eq.exit.thread.i
  %i.bg = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.al, ptr noundef %1, i32 noundef 2) #12 ; 2 uses
  %i.bh = load i32, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i.i, label %bb.x, label %Py_DECREF.exit.i

bb.x:                                             ; preds = %Py_INCREF.exit.i
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.al, align 8, !tbaa !21
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %Py_DECREF.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #12
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.y, %bb.x, %Py_INCREF.exit.i
  %i.bk = icmp slt i32 %i.bg, 0
  br i1 %i.bk, label %set_do_lookup.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit.i
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !22
  %.not30.i26 = icmp eq ptr %i.aa, %i.bl
  br i1 %.not30.i26, label %bb.aa, label %set_do_lookup.exit23

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %.027.i19, align 8, !tbaa !27
  %.not31.i = icmp eq ptr %i.bm, %i.al
  br i1 %.not31.i, label %set_compare_entry_lock_held.exit, label %set_do_lookup.exit23

set_compare_entry_lock_held.exit:                 ; preds = %bb.aa
  %.not32.i.not = icmp eq i32 %i.bg, 0
  br i1 %.not32.i.not, label %set_compare_entry_lock_held.exit.thread35, label %set_do_lookup.exit.sink.split

set_compare_entry_lock_held.exit.thread35:        ; preds = %set_compare_entry_lock_held.exit, %bb.l
  %i.bn = getelementptr i8, ptr %.027.i19, i64 16
  %i.bo = add nsw i32 %.024.i20, -1
  %.not30.i22 = icmp eq i32 %.024.i20, 0
  br i1 %.not30.i22, label %bb.ab, label %bb.j, !llvm.loop !89

bb.ab:                                            ; preds = %set_compare_entry_lock_held.exit.thread35
  %i.bp = lshr i64 %.026.i15, 5                   ; 2 uses
  %i.bq = mul i64 %.025.i17, 5
  %i.br = add nuw nsw i64 %i.bp, 1
  %i.bs = add i64 %i.br, %i.bq
  br label %bb.i

set_do_lookup.exit23:                             ; preds = %bb.aa, %bb.z
  store ptr %.027.i19, ptr %3, align 8, !tbaa !81
  br label %bb.h, !llvm.loop !90

set_do_lookup.exit.sink.split:                    ; preds = %Py_DECREF.exit.i, %bb.m, %unicode_eq.exit.i, %set_compare_entry_lock_held.exit, %bb.e, %set_compare_frozenset.exit.thread.split.loop.exit
  %.027.i19.lcssa78.sink = phi ptr [ %.027.i, %set_compare_frozenset.exit.thread.split.loop.exit ], [ %.027.i, %bb.e ], [ %.027.i19, %set_compare_entry_lock_held.exit ], [ %.027.i19, %unicode_eq.exit.i ], [ %.027.i19, %bb.m ], [ %.027.i19, %Py_DECREF.exit.i ]
  %.0.ph = phi i32 [ %..i.le, %set_compare_frozenset.exit.thread.split.loop.exit ], [ 1, %bb.e ], [ 1, %bb.m ], [ 1, %unicode_eq.exit.i ], [ 1, %set_compare_entry_lock_held.exit ], [ -1, %Py_DECREF.exit.i ]
  store ptr %.027.i19.lcssa78.sink, ptr %3, align 8, !tbaa !81
  br label %set_do_lookup.exit

set_do_lookup.exit:                               ; preds = %bb.k, %bb.d, %set_do_lookup.exit.sink.split
  %.0 = phi i32 [ %.0.ph, %set_do_lookup.exit.sink.split ], [ 0, %bb.d ], [ 0, %bb.k ]
  ret i32 %.0
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #2

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #2

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #2

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #2

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #2

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @set_sub(ptr noundef readonly captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val26 = load ptr, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %.not = icmp eq ptr %.val26, @PySet_Type
  %.not27 = icmp eq ptr %.val26, @PyFrozenSet_Type
  %or.cond = or i1 %.not, %.not27
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val26, ptr noundef nonnull @PySet_Type) #12
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val21 = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val21, ptr noundef nonnull @PyFrozenSet_Type) #12
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 3 uses
  %.not28 = icmp eq ptr %.val24, @PySet_Type
  %.not29 = icmp eq ptr %.val24, @PyFrozenSet_Type
  %or.cond30 = or i1 %.not28, %.not29
  br i1 %or.cond30, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val24, ptr noundef nonnull @PySet_Type) #12
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyFrozenSet_Type) #12
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.g = tail call fastcc ptr @set_difference(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.0 = phi ptr [ %i.g, %bb.g ], [ @_Py_NotImplementedStruct, %bb.f ], [ @_Py_NotImplementedStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @set_and(ptr noundef readonly captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val26 = load ptr, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %.not = icmp eq ptr %.val26, @PySet_Type
  %.not27 = icmp eq ptr %.val26, @PyFrozenSet_Type
  %or.cond = or i1 %.not, %.not27
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val26, ptr noundef nonnull @PySet_Type) #12
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val21 = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val21, ptr noundef nonnull @PyFrozenSet_Type) #12
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 3 uses
  %.not28 = icmp eq ptr %.val24, @PySet_Type
  %.not29 = icmp eq ptr %.val24, @PyFrozenSet_Type
  %or.cond30 = or i1 %.not28, %.not29
  br i1 %or.cond30, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val24, ptr noundef nonnull @PySet_Type) #12
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyFrozenSet_Type) #12
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.g = tail call fastcc ptr @set_intersection(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.0 = phi ptr [ %i.g, %bb.g ], [ @_Py_NotImplementedStruct, %bb.f ], [ @_Py_NotImplementedStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @set_xor(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %.not = icmp eq ptr %.val25, @PySet_Type
  %.not26 = icmp eq ptr %.val25, @PyFrozenSet_Type
  %or.cond = or i1 %.not, %.not26
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val25, ptr noundef nonnull @PySet_Type) #12
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val20, ptr noundef nonnull @PyFrozenSet_Type) #12
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 3 uses
  %.not27 = icmp eq ptr %.val23, @PySet_Type
  %.not28 = icmp eq ptr %.val23, @PyFrozenSet_Type
  %or.cond29 = or i1 %.not27, %.not28
  br i1 %or.cond29, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val23, ptr noundef nonnull @PySet_Type) #12
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyFrozenSet_Type) #12
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.g = tail call ptr @set_symmetric_difference(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.0 = phi ptr [ %i.g, %bb.g ], [ @_Py_NotImplementedStruct, %bb.f ], [ @_Py_NotImplementedStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @set_or(ptr noundef readonly captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %.not = icmp eq ptr %.val34, @PySet_Type
  %.not36 = icmp eq ptr %.val34, @PyFrozenSet_Type
end_hunk_0
begin_hunk_1_@set_difference_update_internal:bb.a
.critedge2.i:                                     ; preds = %.lr.ph.i88
  %i.an = getelementptr i8, ptr %.05.i, i64 16
  %.not.i90 = icmp sgt i64 %i.am, %.040.val113
  br i1 %.not.i90, label %.loopexit, label %.lr.ph.i88, !llvm.loop !63

bb.q:                                             ; preds = %.lr.ph.i88
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, -1073741825
  br i1 %i.ap, label %Py_INCREF.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = add nuw i32 %i.ao, 1
  store i32 %i.aq, ptr %i.aj, align 8, !tbaa !21
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.q, %bb.r
  %i.ar = getelementptr i8, ptr %.05.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.at = call fastcc i32 @set_lookkey(ptr noundef %0, ptr noundef nonnull %i.aj, i64 noundef %i.as, ptr noundef %i.a), !inline_history !80 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.w, label %bb.s

bb.s:                                             ; preds = %Py_INCREF.exit
  %i.av = icmp eq i32 %i.at, 0
  br i1 %i.av, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !81  ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  store i64 -1, ptr %i.ay, align 8, !tbaa !25
  %i.az = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ba = add i64 %i.az, -1
  store i64 %i.ba, ptr %i.z, align 8, !tbaa !31
  store ptr @_dummy_struct, ptr %i.aw, align 8, !tbaa !27
  %i.bb = load i32, ptr %i.ax, align 8, !tbaa !21 ; 2 uses
  %.not.i.i91 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i.i91, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ax, align 8, !tbaa !21
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #12, !inline_history !80
  br label %bb.ab

bb.w:                                             ; preds = %Py_INCREF.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.be = load i32, ptr %.040, align 8, !tbaa !21 ; 2 uses
  %.not.i71 = icmp sgt i32 %i.be, -1
  br i1 %.not.i71, label %bb.x, label %Py_DECREF.exit72

bb.x:                                             ; preds = %bb.w
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %.040, align 8, !tbaa !21
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.y, label %Py_DECREF.exit72

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.040) #12
  br label %Py_DECREF.exit72

Py_DECREF.exit72:                                 ; preds = %bb.w, %bb.x, %bb.y
  %i.bh = load i32, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %.not.i69 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i69, label %bb.z, label %Py_DECREF.exit66

bb.z:                                             ; preds = %Py_DECREF.exit72
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.aj, align 8, !tbaa !21
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.aa, label %Py_DECREF.exit66

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #12
  br label %Py_DECREF.exit66

bb.ab:                                            ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bk = load i32, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %.not.i67 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i67, label %bb.ac, label %Py_DECREF.exit70

bb.ac:                                            ; preds = %bb.ab
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.aj, align 8, !tbaa !21
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ad, label %Py_DECREF.exit70

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #12
  br label %Py_DECREF.exit70

Py_DECREF.exit70:                                 ; preds = %bb.ad, %bb.ac, %bb.ab
  %.040.val = load i64, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  %.not3.i = icmp sgt i64 %i.am, %.040.val
  br i1 %.not3.i, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !102

.loopexit:                                        ; preds = %Py_DECREF.exit70, %.critedge2.i, %Py_INCREF.exit80
  %i.bn = load i32, ptr %.040, align 8, !tbaa !21 ; 2 uses
  %.not.i65 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i65, label %bb.ae, label %Py_DECREF.exit62

bb.ae:                                            ; preds = %.loopexit
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %.040, align 8, !tbaa !21
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.af, label %Py_DECREF.exit62

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %.040) #12
  br label %Py_DECREF.exit62

bb.ag:                                            ; preds = %bb.l
  %i.bq = tail call ptr @PyObject_GetIter(ptr noundef nonnull %1) #12 ; 9 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %Py_DECREF.exit66, label %.preheader

.preheader:                                       ; preds = %bb.ag
  %i.bs = tail call ptr @PyIter_Next(ptr noundef nonnull %i.bq) #12 ; 2 uses
  %.not54109 = icmp eq ptr %i.bs, null
  br i1 %.not54109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit60
  %i.bt = phi ptr [ %i.cf, %Py_DECREF.exit60 ], [ %i.bs, %.preheader ] ; 7 uses
  %i.bu = tail call fastcc i32 @set_discard_key(ptr noundef %0, ptr noundef nonnull %i.bt)
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %.lr.ph
  %i.bw = load i32, ptr %i.bq, align 8, !tbaa !21 ; 2 uses
  %.not.i63 = icmp sgt i32 %i.bw, -1
  br i1 %.not.i63, label %bb.ai, label %Py_DECREF.exit64

bb.ai:                                            ; preds = %bb.ah
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bq, align 8, !tbaa !21
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aj, label %Py_DECREF.exit64

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bq) #12
  br label %Py_DECREF.exit64

Py_DECREF.exit64:                                 ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.bz = load i32, ptr %i.bt, align 8, !tbaa !21 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.bz, -1
  br i1 %.not.i61, label %bb.ak, label %Py_DECREF.exit66

bb.ak:                                            ; preds = %Py_DECREF.exit64
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.bt, align 8, !tbaa !21
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.al, label %Py_DECREF.exit66

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bt) #12
  br label %Py_DECREF.exit66

bb.am:                                            ; preds = %.lr.ph
  %i.cc = load i32, ptr %i.bt, align 8, !tbaa !21 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.cc, -1
  br i1 %.not.i59, label %bb.an, label %Py_DECREF.exit60

bb.an:                                            ; preds = %bb.am
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !21
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ao, label %Py_DECREF.exit60

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bt) #12
  br label %Py_DECREF.exit60

Py_DECREF.exit60:                                 ; preds = %bb.am, %bb.an, %bb.ao
  %i.cf = tail call ptr @PyIter_Next(ptr noundef nonnull %i.bq) #12 ; 2 uses
  %.not54 = icmp eq ptr %i.cf, null
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %Py_DECREF.exit60, %.preheader
  %i.cg = load i32, ptr %i.bq, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i, label %bb.ap, label %Py_DECREF.exit

bb.ap:                                            ; preds = %._crit_edge
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.bq, align 8, !tbaa !21
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.aq, label %Py_DECREF.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bq) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge, %bb.ap, %bb.aq
  %i.cj = tail call ptr @PyErr_Occurred() #12
  %.not55 = icmp eq ptr %i.cj, null
  br i1 %.not55, label %Py_DECREF.exit62, label %Py_DECREF.exit66

Py_DECREF.exit62:                                 ; preds = %bb.af, %bb.ae, %.loopexit, %Py_DECREF.exit
  %i.ck = getelementptr i8, ptr %0, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !32
  %i.cm = getelementptr i8, ptr %0, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31 ; 3 uses
  %i.co = sub i64 %i.cl, %i.cn
  %i.cp = getelementptr i8, ptr %0, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = lshr i64 %i.cq, 2
  %.not57 = icmp ugt i64 %i.co, %i.cr
  br i1 %.not57, label %bb.ar, label %Py_DECREF.exit66

bb.ar:                                            ; preds = %Py_DECREF.exit62
  %i.cs = icmp sgt i64 %i.cn, 50000
  %.v = select i1 %i.cs, i64 1, i64 2
  %i.ct = shl i64 %i.cn, %.v
  %i.cu = tail call fastcc i32 @set_table_resize(ptr noundef nonnull %0, i64 noundef %i.ct)
  br label %Py_DECREF.exit66

Py_DECREF.exit66:                                 ; preds = %bb.al, %bb.ak, %Py_DECREF.exit64, %Py_DECREF.exit, %bb.ag, %bb.z, %Py_DECREF.exit72, %bb.aa, %bb.n, %Py_DECREF.exit62, %bb.ar, %set_clear_internal.exit
  %.4 = phi i32 [ 0, %set_clear_internal.exit ], [ -1, %bb.z ], [ %i.cu, %bb.ar ], [ 0, %Py_DECREF.exit62 ], [ -1, %bb.n ], [ -1, %bb.aa ], [ -1, %Py_DECREF.exit72 ], [ -1, %bb.ag ], [ -1, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit64 ], [ -1, %bb.ak ], [ -1, %bb.al ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @set_merge_lock_held(ptr noundef %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = add i64 %i.f, %i.c
  %i.h = mul i64 %i.g, 5
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = mul i64 %i.j, 3
  %.not = icmp slt i64 %i.h, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = add i64 %i.m, %i.c
  %i.o = shl i64 %i.n, 1
  %i.p = tail call fastcc i32 @set_table_resize(ptr noundef nonnull %0, i64 noundef %i.o)
  %.not74 = icmp eq i32 %i.p, 0
  br i1 %.not74, label %._crit_edge129, label %.loopexit

._crit_edge129:                                   ; preds = %bb.d
  %.pre = load i64, ptr %i.e, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge129, %bb.c
  %i.q = phi i64 [ %.pre, %._crit_edge129 ], [ %i.f, %bb.c ]
  %i.r = getelementptr i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %i.v = icmp eq i64 %i.q, 0
  br i1 %i.v, label %bb.f, label %.preheader80

.preheader80:                                     ; preds = %bb.e
  %i.w = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  %.not7582 = icmp slt i64 %i.x, 0
  br i1 %.not7582, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.i, align 8, !tbaa !24   ; 7 uses
  %i.z = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24  ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa
  %.pre131 = load i64, ptr %i.b, align 8, !tbaa !31 ; 4 uses
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = icmp eq i64 %i.ad, %.pre131
  br i1 %i.ae, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.g
  %.not77114 = icmp slt i64 %i.y, 0
  %i.af = insertelement <2 x i64> poison, i64 %.pre131, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  br i1 %.not77114, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader, %bb.j
  %.pre132135 = phi i64 [ %.pre132136, %bb.j ], [ %i.y, %.preheader ] ; 2 uses
  %i.ah = phi i64 [ %i.ap, %bb.j ], [ %i.y, %.preheader ]
  %.064117 = phi ptr [ %i.as, %bb.j ], [ %i.u, %.preheader ] ; 3 uses
  %.065116 = phi ptr [ %i.ar, %bb.j ], [ %i.s, %.preheader ] ; 3 uses
  %.066115 = phi i64 [ %i.aq, %bb.j ], [ 0, %.preheader ]
  %i.ai = load ptr, ptr %.064117, align 8, !tbaa !27 ; 4 uses
  %.not78 = icmp eq ptr %i.ai, null
  br i1 %.not78, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph118
  %i.aj = getelementptr i8, ptr %.064117, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %.065116, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !25
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.an = icmp ugt i32 %i.am, -1073741825
  br i1 %i.an, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nuw i32 %i.am, 1
  store i32 %i.ao, ptr %i.ai, align 8, !tbaa !21
  %.pre132.pre = load i64, ptr %i.z, align 8, !tbaa !24
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %bb.i
  %.pre132 = phi i64 [ %.pre132135, %bb.h ], [ %.pre132.pre, %bb.i ] ; 2 uses
  store ptr %i.ai, ptr %.065116, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph118, %_Py_NewRef.exit
  %.pre132136 = phi i64 [ %.pre132135, %.lr.ph118 ], [ %.pre132, %_Py_NewRef.exit ]
  %i.ap = phi i64 [ %i.ah, %.lr.ph118 ], [ %.pre132, %_Py_NewRef.exit ] ; 2 uses
  %i.aq = add i64 %.066115, 1                     ; 2 uses
  %i.ar = getelementptr i8, ptr %.065116, i64 16
  %i.as = getelementptr i8, ptr %.064117, i64 16
  %.not77 = icmp sgt i64 %i.aq, %i.ap
  br i1 %.not77, label %._crit_edge.loopexit, label %.lr.ph118, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.at = load <2 x i64>, ptr %i.ac, align 8, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.au = phi <2 x i64> [ %i.at, %._crit_edge.loopexit ], [ %i.ag, %.preheader ]
  store <2 x i64> %i.au, ptr %i.e, align 8, !tbaa !82
  br label %.loopexit

bb.k:                                             ; preds = %bb.g, %bb.f
  store i64 %.pre131, ptr %i.e, align 8, !tbaa !32
  %i.av = getelementptr i8, ptr %0, i64 24
  store i64 %.pre131, ptr %i.av, align 8, !tbaa !31
  %i.aw = icmp ult i64 %i.aa, 9223372036854775807
  br i1 %i.aw, label %.lr.ph113.preheader, label %.loopexit

.lr.ph113.preheader:                              ; preds = %bb.k
  %i.ax = add nuw nsw i64 %i.aa, 1
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %bb.n
  %.1112 = phi ptr [ %i.de, %bb.n ], [ %i.u, %.lr.ph113.preheader ] ; 3 uses
  %.167111 = phi i64 [ %i.dd, %bb.n ], [ %i.ax, %.lr.ph113.preheader ] ; 2 uses
  %i.ay = load ptr, ptr %.1112, align 8, !tbaa !27 ; 5 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = icmp ne ptr %i.ay, @_dummy_struct
  %or.cond = and i1 %i.az, %i.ba
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph113
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, -1073741825
  br i1 %i.bc, label %_Py_NewRef.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nuw i32 %i.bb, 1
  store i32 %i.bd, ptr %i.ay, align 8, !tbaa !21
  br label %_Py_NewRef.exit79

_Py_NewRef.exit79:                                ; preds = %bb.l, %bb.m
  %i.be = getelementptr i8, ptr %.1112, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25 ; 3 uses
  %.01928.i = and i64 %i.bf, %i.y                 ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %i.s, i64 %.01928.i ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %set_insert_clean.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Py_NewRef.exit79, %.loopexit.i
  %.01930.i = phi i64 [ %.019.i, %.loopexit.i ], [ %.01928.i, %_Py_NewRef.exit79 ] ; 3 uses
  %.02029.i = phi i64 [ %i.cm, %.loopexit.i ], [ %i.bf, %_Py_NewRef.exit79 ]
  %i.bj = add i64 %.01930.i, 9
  %.not.i = icmp ugt i64 %i.bj, %i.y
  br i1 %.not.i, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %i.bk = getelementptr [16 x i8], ptr %i.s, i64 %.01930.i ; 18 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %set_insert_clean.exit.loopexit.split.loop.exit168, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bo = getelementptr i8, ptr %i.bk, i64 32
end_hunk_1
