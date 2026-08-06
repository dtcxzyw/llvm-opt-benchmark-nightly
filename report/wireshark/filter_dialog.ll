inline.NumInlined: 712
inline.NumDeleted: 341
begin_hunk_0
%"class.QMetaObject::Connection" = type { ptr }
%class.QByteArray = type { %struct.QArrayDataPointer.9 }
%struct.QArrayDataPointer.9 = type { ptr, ptr, i64 }
%class.QUrl = type { ptr }
%class.QSize = type { i32, i32 }
%class.QVariant = type { %"struct.QVariant::Private" }
%"struct.QVariant::Private" = type { %union.anon, i64 }
%union.anon = type { ptr, [16 x i8] }
%class.QList = type { %struct.QArrayDataPointer.0 }
%struct.QArrayDataPointer.0 = type { ptr, ptr, i64 }
%class.QModelIndex = type { i32, i32, i64, ptr }
%class.QList.11 = type { %struct.QArrayDataPointer.14 }
%struct.QArrayDataPointer.14 = type { ptr, ptr, i64 }
%class.QList.15 = type { %struct.QArrayDataPointer.18 }
%struct.QArrayDataPointer.18 = type { ptr, ptr, i64 }
%"class.QtPrivate::QForeachContainer.24" = type <{ %class.QList, %"class.QList<QString>::const_iterator", %"class.QList<QString>::const_iterator", i32, [4 x i8] }>
%"class.QList<QString>::const_iterator" = type { ptr }

$_ZN15Ui_FilterDialog7setupUiEP7QDialog = comdat any

$_ZN15MainApplication17windowTitleStringE7QString = comdat any

$_ZN5QListI7QStringED2Ev = comdat any

$_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev = comdat any

$_ZN18MacroNameValidatorD0Ev = comdat any

$_ZN21DialogFilterValidatorD0Ev = comdat any

$_ZN15Ui_FilterDialog13retranslateUiEP7QDialog = comdat any

$_ZN9QtPrivate11QSlotObjectIM7QDialogFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJRKS1_EEEvxDpOT_ = comdat any

$_ZN17QArrayDataPointerI7QStringE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_ = comdat any

$_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_ = comdat any

$_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_ = comdat any

$_ZN17QArrayDataPointerI7QStringE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE = comdat any

$_ZN17QArrayDataPointerI7QStringED2Ev = comdat any

$_ZN9QtPrivate11QSlotObjectIM12FilterDialogFvRK14QItemSelectionS4_ENS_4ListIJS4_S4_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_ = comdat any

$_ZN17QArrayDataPointerIiE13detachAndGrowEN10QArrayData14GrowthPositionExPPKiPS0_ = comdat any

$_ZN17QArrayDataPointerIiE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKi = comdat any

$_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_ = comdat any

$_ZN17QArrayDataPointerIiE12allocateGrowERKS0_xN10QArrayData14GrowthPositionE = comdat any

$_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_ = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV12FilterDialog = external constant { [59 x ptr], [10 x ptr] }, align 8
@mainApp = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"list-add\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"list-remove\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"list-copy\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Capture Filters\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cfilters\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"New capture filter\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Display Filters\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dfilters\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"New display filter\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Display Filter Macros\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dmacros\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"New macro\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ui/qt/filter_dialog.cpp\00", align 1
@__func__._ZN12FilterDialogC2EP7QWidgetNS_10FilterTypeE7QString = private unnamed_addr constant [13 x i8] c"FilterDialog\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"assertion \22not reached\22 failed\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Open \00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"ip host host.example.com\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"ip.host == host.example.com\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"eq_example_com\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"$1 == host.example.com\00", align 1
@__func__._ZN12FilterDialog24on_newToolButton_clickedEv = private unnamed_addr constant [25 x i8] c"on_newToolButton_clicked\00", align 1
@__func__._ZN12FilterDialog21on_buttonBox_acceptedEv = private unnamed_addr constant [22 x i8] c"on_buttonBox_accepted\00", align 1
@__func__._ZN12FilterDialog26on_buttonBox_helpRequestedEv = private unnamed_addr constant [27 x i8] c"on_buttonBox_helpRequested\00", align 1
@_ZTV18FilterTreeDelegate = external constant { [26 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@_ZTV18MacroNameValidator = constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTI18MacroNameValidator, ptr @_ZNK10QValidator10metaObjectEv, ptr @_ZN10QValidator11qt_metacastEPKc, ptr @_ZN10QValidator11qt_metacallEN11QMetaObject4CallEiPPv, ptr @_ZN10QValidatorD2Ev, ptr @_ZN18MacroNameValidatorD0Ev, ptr @_ZN7QObject5eventEP6QEvent, ptr @_ZN7QObject11eventFilterEPS_P6QEvent, ptr @_ZN7QObject10timerEventEP11QTimerEvent, ptr @_ZN7QObject10childEventEP11QChildEvent, ptr @_ZN7QObject11customEventEP6QEvent, ptr @_ZN7QObject13connectNotifyERK11QMetaMethod, ptr @_ZN7QObject16disconnectNotifyERK11QMetaMethod, ptr @_ZNK18MacroNameValidator8validateER7QStringRi, ptr @_ZNK10QValidator5fixupER7QString] }, align 8
@_ZTI18MacroNameValidator = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18MacroNameValidator, ptr @_ZTI10QValidator }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18MacroNameValidator = constant [21 x i8] c"18MacroNameValidator\00", align 1
@_ZTI10QValidator = external constant ptr
@_ZTV21DialogFilterValidator = constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTI21DialogFilterValidator, ptr @_ZNK10QValidator10metaObjectEv, ptr @_ZN10QValidator11qt_metacastEPKc, ptr @_ZN10QValidator11qt_metacallEN11QMetaObject4CallEiPPv, ptr @_ZN10QValidatorD2Ev, ptr @_ZN21DialogFilterValidatorD0Ev, ptr @_ZN7QObject5eventEP6QEvent, ptr @_ZN7QObject11eventFilterEPS_P6QEvent, ptr @_ZN7QObject10timerEventEP11QTimerEvent, ptr @_ZN7QObject10childEventEP11QChildEvent, ptr @_ZN7QObject11customEventEP6QEvent, ptr @_ZN7QObject13connectNotifyERK11QMetaMethod, ptr @_ZN7QObject16disconnectNotifyERK11QMetaMethod, ptr @_ZNK21DialogFilterValidator8validateER7QStringRi, ptr @_ZNK10QValidator5fixupER7QString] }, align 8
@_ZTI21DialogFilterValidator = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21DialogFilterValidator, ptr @_ZTI10QValidator }, align 8
@_ZTS21DialogFilterValidator = constant [24 x i8] c"21DialogFilterValidator\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"verticalLayout\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"filterTreeView\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"showSortIndicator\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"horizontalLayout\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"newToolButton\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"deleteToolButton\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"copyToolButton\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"pathLabel\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"buttonBox\00", align 1
@_ZTV11QSpacerItem = external constant { [19 x ptr] }, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"Dialog\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Create a new filter.\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Remove this filter.\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Copy this filter.\00", align 1
@_ZN16QDialogButtonBox16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN12FilterDialog16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN10QByteArray6_emptyE = external constant i8, align 1
@_ZN19QItemSelectionModel16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN9QLineEdit16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"
@switch.table._ZN12FilterDialog26on_buttonBox_helpRequestedEv = private unnamed_addr constant [3 x i8] c"\CB\CC\CE", align 4

@_ZN12FilterDialogC1EP7QWidgetNS_10FilterTypeE7QString = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN12FilterDialogC2EP7QWidgetNS_10FilterTypeE7QString
@_ZN12FilterDialogD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12FilterDialogD2Ev
@_ZN18FilterTreeDelegateC1EP7QObjectN12FilterDialog10FilterTypeE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN18FilterTreeDelegateC2EP7QObjectN12FilterDialog10FilterTypeE

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN12FilterDialogC2EP7QWidgetNS_10FilterTypeE7QString(ptr noundef align 8 dereferenceable_or_null(104) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QString, align 8             ; 9 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %5 = alloca %class.QString, align 16            ; 5 uses
  %6 = alloca %class.QString, align 16            ; 5 uses
  %7 = alloca %class.QString, align 16            ; 5 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 16            ; 7 uses
  %10 = alloca %class.QString, align 16           ; 7 uses
  %11 = alloca %class.QString, align 16           ; 7 uses
  %12 = alloca %class.QString, align 8            ; 9 uses
  %13 = alloca %class.QString, align 8            ; 6 uses
  %14 = alloca %class.QString, align 16           ; 7 uses
  %15 = alloca %class.QString, align 8            ; 9 uses
  %16 = alloca %class.QString, align 8            ; 6 uses
  %17 = alloca %class.QString, align 16           ; 7 uses
  %18 = alloca %class.QString, align 8            ; 9 uses
  %19 = alloca %class.QString, align 8            ; 6 uses
  %20 = alloca %class.QString, align 16           ; 7 uses
  %21 = alloca %class.QString, align 16           ; 3 uses
  %22 = alloca %class.QString, align 16           ; 3 uses
  %23 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %24 = alloca %class.QString, align 8            ; 11 uses
  %25 = alloca %class.QByteArray, align 8         ; 9 uses
  %26 = alloca %class.QString, align 8            ; 9 uses
  %27 = alloca %class.QUrl, align 8               ; 7 uses
  %28 = alloca %class.QString, align 16           ; 12 uses
  %29 = alloca %class.QString, align 16           ; 11 uses
  tail call void @_ZN7QDialogC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(72) %0, ptr noundef null, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.e, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV12FilterDialog, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV12FilterDialog, i64 488), ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %0, i64 72         ; 16 uses
  %i.g = invoke noalias noundef dereferenceable_or_null(72) ptr @_Znwm(i64 noundef 72) #18
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.c unwind label %bb.i       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN18FilterTreeDelegateC1EP7QObjectN12FilterDialog10FilterTypeE(ptr noundef align 8 dereferenceable_or_null(20) %i.j, ptr noundef %0, i32 noundef %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.f, align 8
  invoke void @_ZN15Ui_FilterDialog7setupUiEP7QDialog(ptr noundef align 8 dereferenceable_or_null(72) %i.k, ptr noundef %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 20
  %i.o = getelementptr i8, ptr %i.m, i64 28
  %i.p = load <2 x i32>, ptr %i.o, align 4
  %i.q = load <2 x i32>, ptr %i.n, align 4
  %i.r = add <2 x i32> %i.p, splat (i32 1)
  %i.s = sub <2 x i32> %i.r, %i.q
  %i.t = shl <2 x i32> %i.s, splat (i32 1)
  %30 = sdiv <2 x i32> %i.t, splat (i32 3)        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %8, i8 0, i64 24, i1 false)
  %31 = extractelement <2 x i32> %30, i64 0
  %32 = extractelement <2 x i32> %30, i64 1
  invoke void @_ZN19GeometryStateDialog12loadGeometryEiiRK7QString(ptr noundef align 8 dereferenceable_or_null(72) %0, i32 noundef %31, i32 noundef %32, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.g
  %i.v = atomicrmw sub ptr %i.u, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.v, 1
  br i1 %.not.i.i, label %bb.h, label %_ZN7QStringD2Ev.exit

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.w = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.w, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.m

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit65, %_ZN7QStringD2Ev.exit60, %bb.o, %bb.z, %bb.y, %_ZN7QStringD2Ev.exit70, %bb.n, %bb.m, %bb.d, %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit74

bb.j:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 24) #20
  br label %_ZN7QStringD2Ev.exit74

bb.k:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i53, label %_ZN7QStringD2Ev.exit56, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54:    ; preds = %bb.k
  %i.ab = atomicrmw sub ptr %i.aa, i32 1 acq_rel, align 4
  %.not.i.i55 = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i55, label %bb.l, label %_ZN7QStringD2Ev.exit56

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54
  %i.ac = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit56

_ZN7QStringD2Ev.exit56:                           ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN7QStringD2Ev.exit74

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.e
  %i.ad = load ptr, ptr @mainApp, align 8
  %i.ae = invoke noundef align 8 dereferenceable(8) ptr @_ZN15MainApplication10normalIconEv(ptr noundef align 8 dereferenceable_or_null(168) %i.ad)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7QWidget13setWindowIconERK5QIcon(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 8 dereferenceable(8) %i.ae)
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 8, ptr nonnull @.str)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  %i.ai = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.ai, ptr %9, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.al = load i64, ptr %i.ak, align 16
  store i64 %i.al, ptr %i.aj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  invoke void @_ZN19StockIconToolButton12setStockIconE7QString(ptr noundef align 8 dereferenceable_or_null(72) %i.ah, ptr noundef nonnull align 8 %9)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i57, label %_ZN7QStringD2Ev.exit60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58:    ; preds = %bb.q
  %i.an = atomicrmw sub ptr %i.am, i32 1 acq_rel, align 4
  %.not.i.i59 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i59, label %bb.r, label %_ZN7QStringD2Ev.exit60

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58
  %i.ao = load ptr, ptr %9, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ao, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit60

_ZN7QStringD2Ev.exit60:                           ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58, %bb.r
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 11, ptr nonnull @.str.1)
          to label %bb.s unwind label %bb.i

bb.s:                                             ; preds = %_ZN7QStringD2Ev.exit60
  %i.as = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.as, ptr %10, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load i64, ptr %i.au, align 16
  store i64 %i.av, ptr %i.at, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  invoke void @_ZN19StockIconToolButton12setStockIconE7QString(ptr noundef align 8 dereferenceable_or_null(72) %i.ar, ptr noundef nonnull align 8 %10)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i62, label %_ZN7QStringD2Ev.exit65, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63:    ; preds = %bb.t
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %.not.i.i64 = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i64, label %bb.u, label %_ZN7QStringD2Ev.exit65

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63
  %i.ay = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ay, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit65

_ZN7QStringD2Ev.exit65:                           ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63, %bb.u
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 9, ptr nonnull @.str.2)
          to label %bb.v unwind label %bb.i

bb.v:                                             ; preds = %_ZN7QStringD2Ev.exit65
  %i.bc = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.bc, ptr %11, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = load i64, ptr %i.be, align 16
  store i64 %i.bf, ptr %i.bd, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  invoke void @_ZN19StockIconToolButton12setStockIconE7QString(ptr noundef align 8 dereferenceable_or_null(72) %i.bb, ptr noundef nonnull align 8 %11)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i67, label %_ZN7QStringD2Ev.exit70, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68:    ; preds = %bb.w
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %.not.i.i69 = icmp eq i32 %i.bh, 1
  br i1 %.not.i.i69, label %bb.x, label %_ZN7QStringD2Ev.exit70

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68
  %i.bi = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bi, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit70

_ZN7QStringD2Ev.exit70:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68, %bb.x
  %i.bj = load ptr, ptr %i.f, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void @_ZN17QAbstractItemView14setDragEnabledEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bl, i1 noundef zeroext true)
          to label %bb.y unwind label %bb.i

bb.y:                                             ; preds = %_ZN7QStringD2Ev.exit70
  %i.bm = load ptr, ptr %i.f, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void @_ZN7QWidget14setAcceptDropsEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bo, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.i

bb.z:                                             ; preds = %bb.y
  %i.bp = load ptr, ptr %i.f, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void @_ZN17QAbstractItemView21setDropIndicatorShownEb(ptr noundef align 8 dereferenceable_or_null(40) %i.br, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.i

bb.aa:                                            ; preds = %bb.z
  switch i32 %2, label %bb.bv [
    i32 0, label %bb.ah
    i32 1, label %bb.av
    i32 2, label %bb.bi
  ]

bb.ab:                                            ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bt = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i71, label %_ZN7QStringD2Ev.exit74, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72:    ; preds = %bb.ab
end_hunk_0
