inline.NumInlined: 2287
inline.NumDeleted: 998
begin_hunk_0_@_ZN5QListIS_I8QVariantEED2Ev:bb.a
  %i.p = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 32, i64 noundef 8) #24
  br label %_ZSt8_DestroyI5QListI8QVariantEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI5QListI8QVariantEEvPT_.exit.i.i.i.i.i: ; preds = %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i.i.i.i.i.i.i, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.q = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI5QListI8QVariantEE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !101

_ZN9QtPrivate16QGenericArrayOpsI5QListI8QVariantEE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI5QListI8QVariantEEvPT_.exit.i.i.i.i.i, %bb.b
  %i.r = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.r, i64 noundef 24, i64 noundef 8) #24
  br label %_ZN17QArrayDataPointerI5QListI8QVariantEED2Ev.exit

_ZN17QArrayDataPointerI5QListI8QVariantEED2Ev.exit: ; preds = %bb.a, %_ZN17QArrayDataPointerI5QListI8QVariantEE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI5QListI8QVariantEE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK7QObject6senderEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QTabWidget10setTabTextEiRK7QString(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK7QString3argIJS_RA3_KcEEENSt9enable_ifIXaagesZT_Li2Esr3std7is_sameIN9QtPrivate8BoolListIJXspsr33is_convertible_to_view_or_qstringIT_EE5valueELb1EEEENS6_IJLb1EXspsr33is_convertible_to_view_or_qstringIS7_EE5valueEEEEEE5valueES_E4typeEDpOS7_(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr noundef align 8 dereferenceable_or_null(24) %1, ptr noundef align 8 dereferenceable(24) %2, ptr noundef align 1 dereferenceable(3) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QString, align 8             ; 6 uses
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 7 uses
  %6 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_ZN7QString6_emptyE, ptr %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !108 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_ZN7QString6_emptyE, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !108
  store i8 2, ptr %5, align 8, !alias.scope !105, !noalias !102
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.i, ptr %i.j, align 8, !alias.scope !105, !noalias !102
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %spec.select.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !105, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !102
  %.not.i.i3 = icmp eq ptr %3, null
  br i1 %.not.i.i3, label %_ZN7QStringC2EPKc.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull readonly align 1 dereferenceable(3) %3) #24, !noalias !102
  br label %_ZN7QStringC2EPKc.exit

_ZN7QStringC2EPKc.exit:                           ; preds = %bb.a, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.k, %.split.i.i ], [ 0, %bb.a ]
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 %.sink5.i.i, ptr align 1 dereferenceable(3) %3), !noalias !102
  %i.l = load ptr, ptr %4, align 8, !noalias !102 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !102 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !102
  %.not.i.i.i4 = icmp eq ptr %i.n, null
  %spec.select.i.i.i5 = select i1 %.not.i.i.i4, ptr @_ZN7QString6_emptyE, ptr %i.n
  store i8 2, ptr %6, align 8, !alias.scope !109, !noalias !102
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.p, ptr %i.q, align 8, !alias.scope !109, !noalias !102
  %.sroa.2.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %spec.select.i.i.i5, ptr %.sroa.2.0..sroa_idx.i.i6, align 8, !alias.scope !109, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !112
  store ptr %5, ptr %i.a, align 16, !noalias !112
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %6, ptr %i.r, align 8, !noalias !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.s, align 16, !noalias !112
  invoke void @_ZN9QtPrivate12argToQStringE11QStringViewmPPKNS_7ArgBaseE(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, i64 %i.e, ptr nonnull %spec.select.i.i, i64 noundef 2, ptr noundef nonnull %i.a)
          to label %_ZNK11QStringView3argIJ7QStringRA3_KcEEES1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN7QStringC2EPKc.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i7, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.b
  %i.u = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i8 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i8, label %bb.c, label %_ZN7QStringD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.l, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !102
  resume { ptr, i32 } %i.t

_ZNK11QStringView3argIJ7QStringRA3_KcEEES1_DpOT_.exit: ; preds = %_ZN7QStringC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !112
  %.not.i.i.i9 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i9, label %_ZN7QStringD2Ev.exit12, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10:    ; preds = %_ZNK11QStringView3argIJ7QStringRA3_KcEEES1_DpOT_.exit
  %i.v = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i11 = icmp eq i32 %i.v, 1
  br i1 %.not.i.i11, label %bb.d, label %_ZN7QStringD2Ev.exit12

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.l, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit12

_ZN7QStringD2Ev.exit12:                           ; preds = %_ZNK11QStringView3argIJ7QStringRA3_KcEEES1_DpOT_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !102
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN10TrafficTab14modelForWidgetEP7QWidget(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(134) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN9QTreeView16staticMetaObjectE, ptr noundef %1)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN9QTreeView16staticMetaObjectE, ptr noundef %1) ; 2 uses
  %i.c = tail call noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.b)
  %i.d = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN22TrafficDataFilterProxy16staticMetaObjectE, ptr noundef %i.c)
  %.not6.not = icmp eq ptr %i.d, null
  br i1 %.not6.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.b)
  %i.f = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN22TrafficDataFilterProxy16staticMetaObjectE, ptr noundef %i.e)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN10TrafficTab18dataModelForWidgetEP7QWidget(ptr nofree readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN9QTreeView16staticMetaObjectE, ptr noundef %1)
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN9QTreeView16staticMetaObjectE, ptr noundef %1) ; 2 uses
  %i.c = tail call noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.b)
  %i.d = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN22TrafficDataFilterProxy16staticMetaObjectE, ptr noundef %i.c)
  %.not6.not.i = icmp eq ptr %i.d, null
  br i1 %.not6.not.i, label %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit.thread, label %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit

_ZN10TrafficTab14modelForWidgetEP7QWidget.exit:   ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %i.b)
  %i.f = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN22TrafficDataFilterProxy16staticMetaObjectE, ptr noundef %i.e) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit
  %i.g = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.f)
  %i.h = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ATapDataModel16staticMetaObjectE, ptr noundef %i.g)
  %.not7 = icmp eq ptr %i.h, null
  br i1 %.not7, label %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.f)
  %i.j = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13ATapDataModel16staticMetaObjectE, ptr noundef %i.i)
  br label %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit.thread

_ZN10TrafficTab14modelForWidgetEP7QWidget.exit.thread: ; preds = %bb.b, %bb.a, %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit, %bb.c, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %_ZN10TrafficTab14modelForWidgetEP7QWidget.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN10TrafficTab9setFilterE7QString(ptr noundef align 8 dereferenceable_or_null(134) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 16            ; 7 uses
  %i.a = tail call noundef i32 @_ZNK10QTabWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN10TrafficTab20dataModelForTabIndexEi.exit

._crit_edge:                                      ; preds = %_ZN7QStringD2Ev.exit, %bb.a
  ret void

_ZN10TrafficTab20dataModelForTabIndexEi.exit:     ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.n, %_ZN7QStringD2Ev.exit ] ; 2 uses
  %i.e = call noundef ptr @_ZNK10QTabWidget6widgetEi(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef %.013)
  %i.f = call noundef ptr @_ZN10TrafficTab18dataModelForWidgetEP7QWidget(ptr align 8 poison, ptr noundef %i.e) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN7QStringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN10TrafficTab20dataModelForTabIndexEi.exit
  %i.g = load <2 x ptr>, ptr %1, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  store <2 x ptr> %i.g, ptr %2, align 16
  %i.i = load i64, ptr %i.d, align 8
  store i64 %i.i, ptr %i.c, align 16
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN7QStringC2ERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %bb.b, %bb.c
  invoke void @_ZN13ATapDataModel9setFilterE7QString(ptr noundef nonnull align 8 dereferenceable_or_null(120) %i.f, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN7QStringC2ERKS_.exit
  %i.k = load ptr, ptr %2, align 16               ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i8, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.d
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.l, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN7QStringD2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.m = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d, %_ZN10TrafficTab20dataModelForTabIndexEi.exit
  %i.n = add nuw nsw i32 %.013, 1                 ; 2 uses
  %i.o = call noundef i32 @_ZNK10QTabWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit, label %._crit_edge, !llvm.loop !115

bb.f:                                             ; preds = %_ZN7QStringC2ERKS_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 16               ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i9, label %_ZN7QStringD2Ev.exit12, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10:    ; preds = %bb.f
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %.not.i.i11 = icmp eq i32 %i.s, 1
  br i1 %.not.i.i11, label %bb.g, label %_ZN7QStringD2Ev.exit12

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10
  %i.t = load ptr, ptr %2, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.t, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit12

_ZN7QStringD2Ev.exit12:                           ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10, %bb.g
  resume { ptr, i32 } %i.q
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN13ATapDataModel9setFilterE7QString(ptr noundef align 8 dereferenceable_or_null(120), ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN10TrafficTab17setNameResolutionEb(ptr noundef align 8 dereferenceable_or_null(134) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 129        ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !24, !noundef !25
  %i.d = icmp eq i8 %i.c, %i.a
  br i1 %i.d, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK10QTabWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.preheader
  store i8 %i.a, ptr %i.b, align 1
  tail call void @_ZN10TrafficTab14tabDataChangedEii(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef -1, i32 noundef 0)
  br label %bb.d

_ZN10TrafficTab20dataModelForTabIndexEi.exit:     ; preds = %.preheader, %bb.c
  %.09 = phi i32 [ %i.l, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK10QTabWidget6widgetEi(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef %.09)
  %i.h = tail call noundef ptr @_ZN10TrafficTab18dataModelForWidgetEP7QWidget(ptr align 8 poison, ptr noundef %i.g) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN10TrafficTab20dataModelForTabIndexEi.exit
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable_or_null(120) %i.h, i1 noundef zeroext %1)
  br label %bb.c

bb.c:                                             ; preds = %_ZN10TrafficTab20dataModelForTabIndexEi.exit, %bb.b
  %i.l = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.m = tail call noundef i32 @_ZNK10QTabWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit, label %._crit_edge, !llvm.loop !116

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN10TrafficTab17hasNameResolutionEi(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK10QTabWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call noundef i32 @_ZNK10QTabWidget12currentIndexEv(ptr noundef align 8 dereferenceable_or_null(40) %0) ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZNK10QTabWidget12currentIndexEv(ptr noundef align 8 dereferenceable_or_null(134) %0)
  br label %_ZN10TrafficTab20dataModelForTabIndexEi.exit

_ZN10TrafficTab20dataModelForTabIndexEi.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.d ], [ %i.c, %bb.c ], [ %1, %bb.b ]
  %i.f = tail call noundef ptr @_ZNK10QTabWidget6widgetEi(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef %.0.i)
  %i.g = tail call noundef ptr @_ZN10TrafficTab18dataModelForWidgetEP7QWidget(ptr align 8 poison, ptr noundef %i.f) ; 2 uses
  %.not9 = icmp eq ptr %i.g, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN10TrafficTab20dataModelForTabIndexEi.exit
  %i.h = tail call noundef zeroext i1 @_ZNK13ATapDataModel20allowsNameResolutionEv(ptr noundef nonnull align 8 dereferenceable_or_null(120) %i.g)
  br label %bb.f

bb.f:                                             ; preds = %_ZN10TrafficTab20dataModelForTabIndexEi.exit, %bb.e
  %.0 = phi i1 [ %i.h, %bb.e ], [ false, %_ZN10TrafficTab20dataModelForTabIndexEi.exit ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK13ATapDataModel20allowsNameResolutionEv(ptr noundef align 8 dereferenceable_or_null(120)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN10TrafficTab14createCopyMenuEP7QWidget(ptr noundef align 8 dereferenceable_or_null(134) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK10QTabWidget13currentWidgetEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.b = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN11TrafficTree16staticMetaObjectE, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN11TrafficTree14createCopyMenuEP7QWidget(ptr noundef nonnull align 8 dereferenceable_or_null(88) %i.b, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN11TrafficTree14createCopyMenuEP7QWidget(ptr noundef align 8 dereferenceable_or_null(88), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN10TrafficTab12hasGeoIPDataEi(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK10QTabWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call noundef i32 @_ZNK10QTabWidget12currentIndexEv(ptr noundef align 8 dereferenceable_or_null(40) %0) ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %_ZN10TrafficTab20dataModelForTabIndexEi.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZNK10QTabWidget12currentIndexEv(ptr noundef align 8 dereferenceable_or_null(134) %0)
  br label %_ZN10TrafficTab20dataModelForTabIndexEi.exit

_ZN10TrafficTab20dataModelForTabIndexEi.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.d ], [ %i.c, %bb.c ], [ %1, %bb.b ]
  %i.f = tail call noundef ptr @_ZNK10QTabWidget6widgetEi(ptr noundef align 8 dereferenceable_or_null(134) %0, i32 noundef %.0.i)
  %i.g = tail call noundef ptr @_ZN10TrafficTab18dataModelForWidgetEP7QWidget(ptr align 8 poison, ptr noundef %i.f) ; 2 uses
  %.not9 = icmp eq ptr %i.g, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN10TrafficTab20dataModelForTabIndexEi.exit
  %i.h = tail call noundef zeroext i1 @_ZN13ATapDataModel12hasGeoIPDataEv(ptr noundef nonnull align 8 dereferenceable_or_null(120) %i.g)
  br label %bb.f
end_hunk_0
