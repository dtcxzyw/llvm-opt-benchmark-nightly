Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mocs_compilation?download=true
inline.NumInlined: 80
inline.NumDeleted: 55
begin_hunk_0_@_ZN8MdiChildD2Ev:bb.a
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.c, %bb.a ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.f, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.a, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i

_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i: ; preds = %_ZN7QStringD2Ev.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(168) %i.h) #12, !inline_history !37
  br label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN7QStringD2Ev.exit, %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  switch i32 %i.n, label %_ZN9QtPrivate8RefCount5derefEv.exit.i3 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i2
    i32 -1, label %_ZN7QStringD2Ev.exit7
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i3:           ; preds = %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit
  %i.o = atomicrmw sub ptr %i.m, i32 1 seq_cst, align 4
  %.not.i4 = icmp eq i32 %i.o, 1
  br i1 %.not.i4, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i5, label %_ZN7QStringD2Ev.exit7

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i5: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i3
  %.pre.i6 = load ptr, ptr %i.l, align 8, !tbaa !26
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i2

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i2:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i5, %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit
  %i.p = phi ptr [ %.pre.i6, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i5 ], [ %i.m, %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit7

_ZN7QStringD2Ev.exit7:                            ; preds = %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i3, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 3 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  switch i32 %i.s, label %_ZN9QtPrivate8RefCount5derefEv.exit.i9 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i8
    i32 -1, label %_ZN7QStringD2Ev.exit13
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i9:           ; preds = %_ZN7QStringD2Ev.exit7
  %i.t = atomicrmw sub ptr %i.r, i32 1 seq_cst, align 4
  %.not.i10 = icmp eq i32 %i.t, 1
  br i1 %.not.i10, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i11, label %_ZN7QStringD2Ev.exit13

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i11: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i9
  %.pre.i12 = load ptr, ptr %i.q, align 8, !tbaa !26
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i8

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i8:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i11, %_ZN7QStringD2Ev.exit7
  %i.u = phi ptr [ %.pre.i12, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i11 ], [ %i.r, %_ZN7QStringD2Ev.exit7 ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.u, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit13

_ZN7QStringD2Ev.exit13:                           ; preds = %_ZN7QStringD2Ev.exit7, %_ZN9QtPrivate8RefCount5derefEv.exit.i9, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i8
  tail call void @_ZN9QTextEditD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8MdiChildD0Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN8MdiChildD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #13
  ret void
}

declare noundef zeroext i1 @_ZN9QTextEdit5eventEP6QEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN19QAbstractScrollArea11eventFilterEP7QObjectP6QEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit10timerEventEP11QTimerEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare i64 @_ZNK19QAbstractScrollArea8sizeHintEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare i64 @_ZNK19QAbstractScrollArea15minimumSizeHintEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN9QTextEdit15mousePressEventEP11QMouseEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit17mouseReleaseEventEP11QMouseEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit21mouseDoubleClickEventEP11QMouseEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit14mouseMoveEventEP11QMouseEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit10wheelEventEP11QWheelEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit13keyPressEventEP9QKeyEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit15keyReleaseEventEP9QKeyEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit12focusInEventEP11QFocusEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit13focusOutEventEP11QFocusEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit10paintEventEP11QPaintEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit11resizeEventEP12QResizeEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN8MdiChild10closeEventEP11QCloseEvent(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit16contextMenuEventEP17QContextMenuEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit14dragEnterEventEP15QDragEnterEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit13dragMoveEventEP14QDragMoveEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit14dragLeaveEventEP15QDragLeaveEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit9dropEventEP10QDropEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit9showEventEP10QShowEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit11changeEventEP6QEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit16inputMethodEventEP17QInputMethodEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZNK9QTextEdit16inputMethodQueryEN2Qt16InputMethodQueryE(ptr dead_on_unwind writable sret(%class.QVariant) align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN9QTextEdit18focusNextPrevChildEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN19QAbstractScrollArea13setupViewportEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN19QAbstractScrollArea13viewportEventEP6QEvent(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit16scrollContentsByEii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #2

declare i64 @_ZNK19QAbstractScrollArea16viewportSizeHintEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN9QTextEdit12loadResourceEiRK4QUrl(ptr dead_on_unwind writable sret(%class.QVariant) align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef ptr @_ZNK9QTextEdit27createMimeDataFromSelectionEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK9QTextEdit21canInsertFromMimeDataEPK9QMimeData(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit18insertFromMimeDataEPK9QMimeData(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN9QTextEdit15doSetTextCursorERK11QTextCursor(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn16_N8MdiChildD1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN8MdiChildD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.a) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn16_N8MdiChildD0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN8MdiChildD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.a) #12, !inline_history !40
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(113) %i.a, i64 noundef 120) #13, !inline_history !40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN18QMetaTypeIdQObjectIP7QWidgetLi8EE14qt_metatype_idEv() local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.QByteArray, align 8          ; 10 uses
  %i.a = load atomic i32, ptr @_ZZN18QMetaTypeIdQObjectIP7QWidgetLi8EE14qt_metatype_idEvE11metatype_id acquire, align 4 ; 2 uses
  %.not.not = icmp eq i32 %i.a, 0
  br i1 %.not.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK11QMetaObject9classNameEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7QWidget16staticMetaObjectE) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr @_ZN10QArrayData11shared_nullE, ptr %0, align 8, !tbaa !30
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #11
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = load atomic i32, ptr @_ZN10QArrayData11shared_nullE monotonic, align 16
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %i.d, 2
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10QArrayData11shared_nullE, i64 8), align 8 ; 2 uses
  %i.j = and i32 %i.i, 2147483647
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10QArrayData11shared_nullE, i64 4), align 4, !tbaa !48
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.e)
  %i.m = add i32 %.sroa.speculated.i, 1
  invoke void @_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.m, i32 1)
          to label %_ZN10QByteArray7reserveEi.exit unwind label %1

bb.e:                                             ; preds = %bb.c
  %i.n = or i32 %i.i, -2147483648
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZN10QArrayData11shared_nullE, i64 8), align 8
  br label %_ZN10QByteArray7reserveEi.exit

_ZN10QByteArray7reserveEi.exit:                   ; preds = %bb.e, %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10QByteArray6appendEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %1

bb.f:                                             ; preds = %_ZN10QByteArray7reserveEi.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10QByteArray6appendEc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef signext 42)
          to label %bb.g unwind label %1          ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef i32 @_ZN9QMetaType22registerNormalizedTypeERK10QByteArrayPFvPvEPFS3_S3_PKvEi6QFlagsINS_8TypeFlagEEPK11QMetaObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperIP7QWidgetLb1EE8DestructEPv, ptr noundef nonnull @_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperIP7QWidgetLb1EE9ConstructEPvPKv, i32 noundef 8, i32 268, ptr noundef nonnull @_ZN7QWidget16staticMetaObjectE)
          to label %_Z27qRegisterNormalizedMetaTypeIP7QWidgetEiRK10QByteArrayPT_N9QtPrivate21MetaTypeDefinedHelperIS5_Xaasr12QMetaTypeId2IS5_EE7Definedntsr12QMetaTypeId2IS5_EE9IsBuiltInEE11DefinedTypeE.exit unwind label %3, !inline_history !41 ; 2 uses

_Z27qRegisterNormalizedMetaTypeIP7QWidgetEiRK10QByteArrayPT_N9QtPrivate21MetaTypeDefinedHelperIS5_Xaasr12QMetaTypeId2IS5_EE7Definedntsr12QMetaTypeId2IS5_EE9IsBuiltInEE11DefinedTypeE.exit: ; preds = %bb.g
  store atomic i32 %i.q, ptr @_ZZN18QMetaTypeIdQObjectIP7QWidgetLi8EE14qt_metatype_idEvE11metatype_id release, align 4
  %i.r = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  switch i32 %i.s, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN10QByteArrayD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %_Z27qRegisterNormalizedMetaTypeIP7QWidgetEiRK10QByteArrayPT_N9QtPrivate21MetaTypeDefinedHelperIS5_Xaasr12QMetaTypeId2IS5_EE7Definedntsr12QMetaTypeId2IS5_EE9IsBuiltInEE11DefinedTypeE.exit
  %i.t = atomicrmw sub ptr %i.r, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %i.t, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN10QByteArrayD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %_Z27qRegisterNormalizedMetaTypeIP7QWidgetEiRK10QByteArrayPT_N9QtPrivate21MetaTypeDefinedHelperIS5_Xaasr12QMetaTypeId2IS5_EE7Definedntsr12QMetaTypeId2IS5_EE9IsBuiltInEE11DefinedTypeE.exit
  %i.u = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.r, %_Z27qRegisterNormalizedMetaTypeIP7QWidgetEiRK10QByteArrayPT_N9QtPrivate21MetaTypeDefinedHelperIS5_Xaasr12QMetaTypeId2IS5_EE7Definedntsr12QMetaTypeId2IS5_EE9IsBuiltInEE11DefinedTypeE.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.u, i64 noundef 1, i64 noundef 8) #12
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %_Z27qRegisterNormalizedMetaTypeIP7QWidgetEiRK10QByteArrayPT_N9QtPrivate21MetaTypeDefinedHelperIS5_Xaasr12QMetaTypeId2IS5_EE7Definedntsr12QMetaTypeId2IS5_EE9IsBuiltInEE11DefinedTypeE.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  br label %bb.i

1:                                                ; preds = %bb.d, %bb.f, %_ZN10QByteArray7reserveEi.exit
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

3:                                                ; preds = %bb.g
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %3, %1
  %.pn = phi { ptr, i32 } [ %4, %3 ], [ %2, %1 ]
  call void @_ZN10QByteArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a, %_ZN10QByteArrayD2Ev.exit
  %.1 = phi i32 [ %i.q, %_ZN10QByteArrayD2Ev.exit ], [ %i.a, %bb.a ]
  ret i32 %.1
}

declare noundef ptr @_ZNK11QMetaObject9classNameEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN10QByteArray6appendEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN10QByteArray6appendEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN10QByteArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  switch i32 %i.b, label %_ZN9QtPrivate8RefCount5derefEv.exit [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
    i32 -1, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread
  ]

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2

_ZN9QtPrivate8RefCount5derefEv.exit.thread2:      ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, %bb.a
  %i.d = phi ptr [ %.pre, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge ], [ %i.a, %bb.a ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.d, i64 noundef 1, i64 noundef 8) #12
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit.thread:       ; preds = %bb.a, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2, %_ZN9QtPrivate8RefCount5derefEv.exit
  ret void
}

declare void @_ZN10QByteArray11reallocDataEj6QFlagsIN10QArrayData16AllocationOptionEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32) local_unnamed_addr #2

declare noundef i32 @_ZN9QMetaType22registerNormalizedTypeERK10QByteArrayPFvPvEPFS3_S3_PKvEi6QFlagsINS_8TypeFlagEEPK11QMetaObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, i32 noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperIP7QWidgetLb1EE8DestructEPv(ptr noundef %0) #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN17QtMetaTypePrivate23QMetaTypeFunctionHelperIP7QWidgetLb1EE9ConstructEPvPKv(ptr noundef %0, ptr noundef %1) #8 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN7QDialogD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN9QTextEditD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"p1 _ZTS11QObjectData", !9, i64 0}
!13 = !{!"_ZTS14QScopedPointerI11QObjectData21QScopedPointerDeleterIS0_EE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 _ZTS7QObject", !9, i64 0}
!16 = !{!"_ZTS5QListIP7QObjectE", !5, i64 0}
!17 = !{!"p1 _ZTS22QDynamicMetaObjectData", !9, i64 0}
!18 = !{!"_ZTS11QObjectData", !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 33, !6, i64 36, !17, i64 40}
!19 = !{!18, !17, i64 40}
!20 = !{!"p1 _ZTS7QWidget", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"vtable pointer", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS15QTypedArrayDataItE", !9, i64 0}
!25 = !{!"_ZTS7QString", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{ptr @_ZN12CFrmSettingsD2Ev}
!28 = !{!"p1 _ZTS15QTypedArrayDataIcE", !9, i64 0}
!29 = !{!"_ZTS10QByteArray", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"bool", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTS8MdiChild", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{ptr @_ZN12CFrmSettingsD0Ev, ptr @_ZN12CFrmSettingsD2Ev}
!36 = !{ptr @_ZN12CFrmSettingsD0Ev}
!37 = distinct !{null, null}
!38 = !{!"p1 _ZTS11ImageViewer", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{ptr @_ZN8MdiChildD0Ev}
!41 = distinct !{null}
!42 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!43 = !{!"_ZTSSt6atomicIiE", !42, i64 0}
!44 = !{!"_ZTS19QBasicAtomicIntegerIiE", !43, i64 0}
!45 = !{!"_ZTSN9QtPrivate8RefCountE", !44, i64 0}
!46 = !{!"long long", !5, i64 0}
!47 = !{!"_ZTS10QArrayData", !45, i64 0, !6, i64 4, !6, i64 8, !6, i64 11, !46, i64 16}
!48 = !{!47, !6, i64 4}
end_hunk_0
