inline.NumInlined: 431
inline.NumDeleted: 37
begin_hunk_0_@weakref_richcompare:bb.a
  br i1 %.not.i46, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val45, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not67 = icmp eq i32 %i.c, 0
  br i1 %.not67, label %bb.c, label %PyObject_TypeCheck.exit.thread

end_hunk_0
begin_hunk_1_@weakref_richcompare:bb.a
  br i1 %.not.i47, label %PyObject_TypeCheck.exit48.thread, label %PyObject_TypeCheck.exit48

PyObject_TypeCheck.exit48:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val44, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %bb.d, label %PyObject_TypeCheck.exit48.thread

end_hunk_1
begin_hunk_2_@proxy_iternext:bb.a
  %i.h = getelementptr i8, ptr %.val12, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %.val, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.22, ptr noundef %i.j) #6 ; 0 uses
  %i.l = load i32, ptr %.val12, align 8, !tbaa !37 ; 2 uses
  %.not.i9 = icmp sgt i32 %i.l, -1
end_hunk_2
begin_hunk_3_@get_or_create_weakref:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !40
  %i.d = getelementptr i8, ptr %.val35, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.26, ptr noundef %i.e) #6 ; 0 uses
  br label %try_reuse_basic_ref.exit

end_hunk_3
begin_hunk_4_@get_or_create_weakref:bb.a

bb.o:                                             ; preds = %bb.g, %get_basic_refs.exit.i, %bb.l
  %i.ae = getelementptr i8, ptr %0, i64 304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = tail call ptr %i.af(ptr noundef %0, i64 noundef 0) #6, !inline_history !44 ; 15 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %try_reuse_basic_ref.exit, label %bb.p

end_hunk_4
begin_hunk_5_@get_or_create_weakref:bb.a
  %i.ao = getelementptr i8, ptr %i.ag, i64 24
  store ptr %spec.store.select, ptr %i.ao, align 8, !tbaa !36
  %i.ap = getelementptr i8, ptr %i.ag, i64 56
  store ptr @weakref_vectorcall, ptr %i.ap, align 8, !tbaa !45
  %i.aq = load ptr, ptr %.0.i, align 8, !tbaa !28 ; 10 uses
  %.not.i.i38 = icmp eq ptr %i.aq, null           ; 2 uses
  br i1 %.not.i.i38, label %get_basic_refs.exit.i39, label %bb.t
end_hunk_5
begin_hunk_6_@get_or_create_weakref:bb.a

bb.aa:                                            ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit
  %i.bi = getelementptr i8, ptr %0, i64 304
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bk = tail call ptr %i.bj(ptr noundef %0, i64 noundef 0) #6, !inline_history !44 ; 15 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %try_reuse_basic_ref.exit, label %bb.ab

end_hunk_6
begin_hunk_7_@get_or_create_weakref:bb.a
  %i.bs = getelementptr i8, ptr %i.bk, i64 24
  store ptr %spec.store.select, ptr %i.bs, align 8, !tbaa !36
  %i.bt = getelementptr i8, ptr %i.bk, i64 56
  store ptr @weakref_vectorcall, ptr %i.bt, align 8, !tbaa !45
  %i.bu = load ptr, ptr %.0.i, align 8, !tbaa !28 ; 10 uses
  %.not.i.i63 = icmp eq ptr %i.bu, null           ; 2 uses
  br i1 %.not.i.i63, label %get_basic_refs.exit.i64, label %bb.af
end_hunk_7
begin_hunk_8_@PyWeakref_IsDead:bb.a
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.c
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val10, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.d, label %PyObject_TypeCheck.exit.thread

end_hunk_8
begin_hunk_9_@PyWeakref_GetRef:bb.a
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.c
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.d, label %PyObject_TypeCheck.exit.thread

end_hunk_9
begin_hunk_10_@PyWeakref_GetObject:bb.a
  br i1 %.not.i16, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val15, ptr noundef nonnull @_PyWeakref_RefType) #6, !inline_history !41
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %bb.c, label %PyObject_TypeCheck.exit.thread

end_hunk_10
begin_hunk_11_@PyObject_ClearWeakRefs:bb.a
  %or.cond.i75 = or i1 %.not.i73, %.not.i.i74
  %i.bi = icmp eq ptr %.val.i.i72, @_PyWeakref_CallableProxyType
  %spec.select = or i1 %or.cond.i75, %i.bi
  br i1 %spec.select, label %bb.m, label %.split.us, !llvm.loop !46

bb.v:                                             ; preds = %_PyWeakref_GetWeakrefCount.exit
  %i.bj = tail call ptr @PyErr_GetRaisedException() #6 ; 2 uses
end_hunk_11
begin_hunk_12_@PyObject_ClearWeakRefs:bb.a
_PyWeakref_ClearRef.exit.i:                       ; preds = %bb.ae, %.lr.ph.i78
  %i.cr = phi ptr [ %i.bu, %.lr.ph.i78 ], [ %.pre.i79, %bb.ae ] ; 2 uses
  %.not.i80 = icmp eq ptr %i.cr, null
  br i1 %.not.i80, label %_PyWeakref_ClearWeakRefsNoCallbacks.exit, label %.lr.ph.i78, !llvm.loop !48

_PyWeakref_ClearWeakRefsNoCallbacks.exit:         ; preds = %_PyWeakref_ClearRef.exit.i, %bb.w
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.6) #6
end_hunk_12
begin_hunk_13_@PyObject_ClearWeakRefs:bb.a
  %.in = phi ptr [ %i.dx, %bb.as ], [ %i.dx, %_Py_TryIncref.exit ], [ %i.dx, %bb.aq ], [ %i.dx, %bb.ar ], [ %.pre, %bb.ap ]
  %.1114 = phi i64 [ %.041118157, %bb.as ], [ %.041118157, %_Py_TryIncref.exit ], [ %.041118157, %bb.aq ], [ %.041118157, %bb.ar ], [ %i.dw, %bb.ap ] ; 3 uses
  %.not120 = icmp eq ptr %.in, null
  br i1 %.not120, label %.preheader, label %.preheader116.splitthread-pre-split, !llvm.loop !49

._crit_edge:                                      ; preds = %handle_callback.exit, %.preheader116, %.preheader
  %i.eb = load i32, ptr %i.bl, align 8, !tbaa !37 ; 2 uses
end_hunk_13
begin_hunk_14_@PyObject_ClearWeakRefs:bb.a
handle_callback.exit:                             ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %.lr.ph
  %i.en = add i64 %.040119, 2                     ; 2 uses
  %i.eo = icmp slt i64 %i.en, %.1114
  br i1 %i.eo, label %.lr.ph, label %._crit_edge, !llvm.loop !50

_PyWeakref_GetWeakrefCount.exit.thread:           ; preds = %_PyObject_GET_WEAKREFS_LISTPTR.exit.i, %.split.us, %_PyWeakref_GetWeakrefCount.exit, %Py_DECREF.exit, %_PyWeakref_ClearWeakRefsNoCallbacks.exit, %_PyObject_GET_WEAKREFS_LISTPTR.exit, %bb.d
  ret void
end_hunk_14
begin_hunk_15_@_PyWeakref_ClearWeakRefsNoCallbacks:bb.a
_PyWeakref_ClearRef.exit:                         ; preds = %bb.b, %bb.j
  %i.ad = phi ptr [ %i.g, %bb.b ], [ %.pre, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !48

._crit_edge:                                      ; preds = %_PyWeakref_ClearRef.exit, %bb.a
  ret void
end_hunk_15
begin_hunk_16_@PyUnstable_Object_ClearWeakRefsNoCallbacks:bb.a
_PyWeakref_ClearRef.exit.i:                       ; preds = %bb.k, %bb.c
  %i.ac = phi ptr [ %i.f, %bb.c ], [ %.pre.i, %bb.k ] ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_PyWeakref_ClearWeakRefsNoCallbacks.exit, label %bb.c, !llvm.loop !48

_PyWeakref_ClearWeakRefsNoCallbacks.exit:         ; preds = %_PyWeakref_ClearRef.exit.i, %bb.b, %bb.a
  ret void
end_hunk_16
begin_hunk_17_@_PyStaticType_ClearWeakRefs:bb.a
_PyWeakref_ClearRef.exit:                         ; preds = %bb.b, %bb.j
  %i.ab = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !51

._crit_edge:                                      ; preds = %_PyWeakref_ClearRef.exit, %bb.a
  ret void
end_hunk_17
begin_hunk_18_@llvm.memset.p0.i64
!38 = !{!16, !14, i64 320}
!39 = !{!33, !18, i64 32}
!40 = !{!23, !23, i64 0}
!41 = distinct !{null}
!42 = !{!16, !19, i64 24}
!43 = !{!16, !14, i64 304}
!44 = distinct !{null}
!45 = !{!33, !14, i64 56}
!46 = distinct !{!46, !31, !47}
!47 = !{!"llvm.loop.unswitch.partial.disable"}
!48 = distinct !{!48, !31}
!49 = distinct !{!49, !31, !47}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
end_hunk_18
