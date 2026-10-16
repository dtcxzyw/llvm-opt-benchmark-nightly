Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/timeline_delegate?download=true
inline.NumInlined: 176
inline.NumDeleted: 126
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%"struct.std::array" = type { [14 x i8] }
%struct.QMetaObject = type { %"struct.QMetaObject::Data" }
%"struct.QMetaObject::Data" = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%class.QRectF = type { double, double, double, double }
%class.QBrush = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.3" }
%"struct.std::_Head_base.3" = type { ptr }
%class.QString = type { %struct.QArrayDataPointer }
%struct.QArrayDataPointer = type { ptr, ptr, i64 }
%class.QMetaType = type { ptr }
%class.QStyleOptionViewItem = type { %class.QStyleOption, %class.QFlags.0, %class.QFlags.0, i32, i32, %class.QSize, %class.QFont, i8, %class.QFlags.1, %class.QLocale, ptr, %class.QModelIndex, i32, %class.QIcon, %class.QString, i32, %class.QBrush }
%class.QStyleOption = type { i32, i32, %class.QFlags, i32, %class.QRect, %class.QFontMetrics, %class.QPalette, ptr }
%class.QFlags = type { i32 }
%class.QRect = type { i32, i32, i32, i32 }
%class.QFontMetrics = type { %class.QExplicitlySharedDataPointer }
%class.QExplicitlySharedDataPointer = type { ptr }
%class.QPalette = type <{ ptr, i32, [4 x i8] }>
%class.QFlags.0 = type { i32 }
%class.QSize = type { i32, i32 }
%class.QFont = type <{ %class.QExplicitlySharedDataPointer, i32, [4 x i8] }>
%class.QFlags.1 = type { i32 }
%class.QLocale = type { %class.QSharedDataPointer }
%class.QSharedDataPointer = type { ptr }
%class.QModelIndex = type { i32, i32, i64, ptr }
%class.QIcon = type { ptr }
%struct.timeline_span = type { i32, i32, double, double, double, double, i32, i32 }
%class.QVariant = type { %"struct.QVariant::Private" }
%"struct.QVariant::Private" = type { %union.anon, i64 }
%union.anon = type { ptr, [16 x i8] }
%class.QColor = type <{ i32, %"union.QColor::CT", [2 x i8] }>
%"union.QColor::CT" = type { %struct.anon }
%struct.anon = type { i16, i16, i16, i16, i16 }
%class.QList = type { %struct.QArrayDataPointer.16 }
%struct.QArrayDataPointer.16 = type { ptr, ptr, i64 }
%class.QByteArray = type { %struct.QArrayDataPointer.28 }
%struct.QArrayDataPointer.28 = type { ptr, ptr, i64 }

$_ZN20QStyleOptionViewItemC2ERKS_ = comdat any

$_ZN7QStringD2Ev = comdat any

$_ZN20QStyleOptionViewItemD2Ev = comdat any

$_ZN16TimelineDelegateD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE13getDefaultCtrEvENUlPKNS_18QMetaTypeInterfaceEPvE_8__invokeES5_S6_ = comdat any

$_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE10getCopyCtrEvENUlPKNS_18QMetaTypeInterfaceEPvPKvE_8__invokeES5_S6_S8_ = comdat any

$_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE10getMoveCtrEvENUlPKNS_18QMetaTypeInterfaceEPvS6_E_8__invokeES5_S6_S6_ = comdat any

$_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE17getLegacyRegisterEvENUlvE_8__invokeEv = comdat any

$_ZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEv = comdat any

$_Z41qRegisterNormalizedMetaTypeImplementationI13timeline_spanEiRK10QByteArray = comdat any

$qt_version_tag_use = comdat any

$_ZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE4nameE = comdat any

$_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE = comdat any

$_ZZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEvE11metatype_id = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV16TimelineDelegate = constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI16TimelineDelegate, ptr @_ZNK19QStyledItemDelegate10metaObjectEv, ptr @_ZN19QStyledItemDelegate11qt_metacastEPKc, ptr @_ZN19QStyledItemDelegate11qt_metacallEN11QMetaObject4CallEiPPv, ptr @_ZN19QStyledItemDelegateD2Ev, ptr @_ZN16TimelineDelegateD0Ev, ptr @_ZN7QObject5eventEP6QEvent, ptr @_ZN19QStyledItemDelegate11eventFilterEP7QObjectP6QEvent, ptr @_ZN7QObject10timerEventEP11QTimerEvent, ptr @_ZN7QObject10childEventEP11QChildEvent, ptr @_ZN7QObject11customEventEP6QEvent, ptr @_ZN7QObject13connectNotifyERK11QMetaMethod, ptr @_ZN7QObject16disconnectNotifyERK11QMetaMethod, ptr @_ZNK16TimelineDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex, ptr @_ZNK19QStyledItemDelegate8sizeHintERK20QStyleOptionViewItemRK11QModelIndex, ptr @_ZNK19QStyledItemDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex, ptr @_ZNK21QAbstractItemDelegate13destroyEditorEP7QWidgetRK11QModelIndex, ptr @_ZNK19QStyledItemDelegate13setEditorDataEP7QWidgetRK11QModelIndex, ptr @_ZNK19QStyledItemDelegate12setModelDataEP7QWidgetP18QAbstractItemModelRK11QModelIndex, ptr @_ZNK19QStyledItemDelegate20updateEditorGeometryEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex, ptr @_ZN19QStyledItemDelegate11editorEventEP6QEventP18QAbstractItemModelRK20QStyleOptionViewItemRK11QModelIndex, ptr @_ZN21QAbstractItemDelegate9helpEventEP10QHelpEventP17QAbstractItemViewRK20QStyleOptionViewItemRK11QModelIndex, ptr @_ZNK21QAbstractItemDelegate13paintingRolesEv, ptr @_ZNK19QStyledItemDelegate11displayTextERK8QVariantRK7QLocale, ptr @_ZNK19QStyledItemDelegate15initStyleOptionEP20QStyleOptionViewItemRK11QModelIndex] }, align 8
@.str = private unnamed_addr constant [6 x i8] c"vista\00", align 1
@_ZTI16TimelineDelegate = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16TimelineDelegate, ptr @_ZTI19QStyledItemDelegate }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16TimelineDelegate = constant [19 x i8] c"16TimelineDelegate\00", align 1
@_ZTI19QStyledItemDelegate = external constant ptr
@_ZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE4nameE = linkonce_odr hidden constant %"struct.std::array" { [14 x i8] c"timeline_span\00" }, comdat, align 1
@_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE = linkonce_odr hidden global { i16, i16, i32, i32, { { i32 } }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i16 0, i16 8, i32 48, i32 4, { { i32 } } zeroinitializer, ptr null, ptr @_ZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE4nameE, ptr @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE13getDefaultCtrEvENUlPKNS_18QMetaTypeInterfaceEPvE_8__invokeES5_S6_, ptr @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE10getCopyCtrEvENUlPKNS_18QMetaTypeInterfaceEPvPKvE_8__invokeES5_S6_S8_, ptr @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE10getMoveCtrEvENUlPKNS_18QMetaTypeInterfaceEPvS6_E_8__invokeES5_S6_S6_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE17getLegacyRegisterEvENUlvE_8__invokeEv }, comdat, align 8
@_ZZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEvE11metatype_id = linkonce_odr local_unnamed_addr global { { i32 } } zeroinitializer, comdat, align 4
@__const._ZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEv.arr = private unnamed_addr constant %"struct.std::array" { [14 x i8] c"timeline_span\00" }, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"timeline_span\00", align 1
@_ZN9QTreeView16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN19QAbstractProxyModel16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN16TimelineDelegateC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN16TimelineDelegateC2EP7QWidget

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16TimelineDelegateC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(20) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN19QStyledItemDelegateC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV16TimelineDelegate, i64 16), ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 16
  store i32 256, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN19QStyledItemDelegateC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define void @_ZN16TimelineDelegate11setDataRoleEi(ptr nofree noundef writeonly align 8 captures(none) dereferenceable_or_null(20) initializes((16, 20)) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK16TimelineDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(20) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(208) %2, ptr noundef align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QRectF, align 16             ; 6 uses
  %5 = alloca %class.QBrush, align 8              ; 7 uses
  %6 = alloca %class.QString, align 16            ; 5 uses
  %7 = alloca %class.QMetaType, align 8           ; 7 uses
  %8 = alloca %class.QMetaType, align 8           ; 7 uses
  %9 = alloca %class.QStyleOptionViewItem, align 8 ; 19 uses
  %10 = alloca %struct.timeline_span, align 8     ; 15 uses
  %11 = alloca %class.QVariant, align 8           ; 15 uses
  %12 = alloca %class.QModelIndex, align 8        ; 14 uses
  %13 = alloca %class.QModelIndex, align 8        ; 8 uses
  %14 = alloca %class.QModelIndex, align 8        ; 9 uses
  %15 = alloca %class.QModelIndex, align 8        ; 8 uses
  %16 = alloca %class.QModelIndex, align 8        ; 9 uses
  %17 = alloca %class.QString, align 8            ; 9 uses
  %18 = alloca %class.QString, align 16           ; 10 uses
  %19 = alloca %class.QColor, align 4             ; 8 uses
  %20 = alloca %class.QColor, align 4             ; 8 uses
  %21 = alloca %class.QColor, align 4             ; 5 uses
  %22 = alloca %class.QColor, align 4             ; 5 uses
  %23 = alloca %class.QBrush, align 8             ; 7 uses
  %24 = alloca %class.QString, align 8            ; 9 uses
  %25 = alloca %class.QVariant, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN20QStyleOptionViewItemC2ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(208) %9, ptr noundef align 8 dereferenceable(208) %2)
  invoke void @_ZNK19QStyledItemDelegate15initStyleOptionEP20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef nonnull %9, ptr noundef align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !24 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !noalias !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !noalias !24
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %11, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.d, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i32 noundef %i.b)
          to label %_ZNK11QModelIndex4dataEi.exit unwind label %bb.y, !inline_history !8

.thread:                                          ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 24, i1 false), !alias.scope !24
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 2, ptr %i.h, align 8, !alias.scope !24
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !25
  br label %_Zeq9QMetaTypeS_.exit.thread9.i.i

_ZNK11QModelIndex4dataEi.exit:                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !26
  %i.j = and i64 %.pre, -4                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.l = inttoptr i64 %i.j to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !26
  store ptr %i.l, ptr %7, align 8, !noalias !26
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE, ptr %8, align 8, !noalias !26
  %i.m = icmp eq i64 %i.j, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE to i64)
  br i1 %i.m, label %_Zeq9QMetaTypeS_.exit.thread.i.i, label %bb.d

_Zeq9QMetaTypeS_.exit.thread.i.i:                 ; preds = %_ZNK11QModelIndex4dataEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !26
  br label %bb.h

bb.d:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_Zeq9QMetaTypeS_.exit.thread9.i.i, label %bb.e

_Zeq9QMetaTypeS_.exit.thread9.i.i:                ; preds = %.thread, %bb.d
  %i.n = phi ptr [ %i.i, %.thread ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !26
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.l, i64 12
  %i.p = load atomic i32, ptr %i.o monotonic, align 4, !noalias !26 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not6.not.i.i.i.i, label %bb.f, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.z

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.f, %bb.e
  %.1.i.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.q, %bb.f ]
  %i.r = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE, i64 12) monotonic, align 4, !noalias !26 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.g, label %_Zeq9QMetaTypeS_.exit.i.i

bb.g:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.s = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.z

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.g, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.r, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !26
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.u = load ptr, ptr %11, align 8, !noalias !26 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noalias !26
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.u, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  br label %_ZNK8QVariant5valueI13timeline_spanEET_v.exit

bb.i:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread9.i.i
  %i.z = phi ptr [ %i.k, %_Zeq9QMetaTypeS_.exit.i.i ], [ %i.n, %_Zeq9QMetaTypeS_.exit.thread9.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false), !alias.scope !26
  %i.aa = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %11)
          to label %.noexc120 unwind label %bb.z

.noexc120:                                        ; preds = %bb.i
  %i.ab = load i64, ptr %i.z, align 8, !noalias !26
  %i.ac = and i64 %i.ab, 1
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc120
  %i.ad = load ptr, ptr %11, align 8, !noalias !26 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !noalias !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.j, %.noexc120
  %i.ai = phi ptr [ %i.ah, %bb.j ], [ %11, %.noexc120 ]
  %i.aj = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.aa, ptr noundef %i.ai, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE, ptr noundef nonnull align 8 %10)
          to label %_ZNK8QVariant5valueI13timeline_spanEET_v.exit unwind label %bb.z ; 0 uses

_ZNK8QVariant5valueI13timeline_spanEET_v.exit:    ; preds = %bb.h, %_ZNK8QVariant9constDataEv.exit.i.i
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ak = load i32, ptr %i.a, align 8
  %i.al = icmp eq i32 %i.ak, 261
  br i1 %i.al, label %bb.k, label %.critedge115

bb.k:                                             ; preds = %_ZNK8QVariant5valueI13timeline_spanEET_v.exit
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.an = load double, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = getelementptr i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN9QTreeView16staticMetaObjectE, ptr noundef %i.au)
          to label %_Z12qobject_castIP9QTreeViewET_P7QObject.exit unwind label %bb.ab ; 4 uses

_Z12qobject_castIP9QTreeViewET_P7QObject.exit:    ; preds = %bb.k
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.critedge115, label %bb.l

bb.l:                                             ; preds = %_Z12qobject_castIP9QTreeViewET_P7QObject.exit
  %i.aw = invoke noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.av)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.ax = invoke noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN19QAbstractProxyModel16staticMetaObjectE, ptr noundef %i.aw)
          to label %_Z12qobject_castIP19QAbstractProxyModelET_P7QObject.exit unwind label %bb.ac ; 8 uses

_Z12qobject_castIP19QAbstractProxyModelET_P7QObject.exit: ; preds = %bb.m
  %.not87 = icmp eq ptr %i.ax, null
  br i1 %.not87, label %.critedge115, label %bb.n

bb.n:                                             ; preds = %_Z12qobject_castIP19QAbstractProxyModelET_P7QObject.exit
  %i.ay = invoke noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.ax)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  %.not88 = icmp eq ptr %i.ay, null
  br i1 %.not88, label %.critedge115, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.az = load ptr, ptr %i.ax, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 400
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %12, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.ax, ptr noundef align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !29 ; 3 uses
  %.not.i124 = icmp eq ptr %i.bf, null
  br i1 %.not.i124, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !29
  %i.bi = icmp eq i32 %i.bh, %i.bd
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %12, i64 24, i1 false)
  br label %_ZNK11QModelIndex15siblingAtColumnEi.exit

bb.t:                                             ; preds = %bb.r
  %i.bj = load i32, ptr %12, align 8, !noalias !29
  %i.bk = load ptr, ptr %i.bf, align 8, !noalias !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !29
  invoke void %i.bm(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.bf, i32 noundef %i.bj, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %12)
          to label %_ZNK11QModelIndex15siblingAtColumnEi.exit unwind label %bb.ae, !inline_history !19

bb.u:                                             ; preds = %bb.q
  store i32 -1, ptr %14, align 8, !alias.scope !29
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 -1, ptr %i.bn, align 4, !alias.scope !29
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false), !alias.scope !29
  br label %_ZNK11QModelIndex15siblingAtColumnEi.exit

_ZNK11QModelIndex15siblingAtColumnEi.exit:        ; preds = %bb.u, %bb.s, %bb.t
  %i.bp = load ptr, ptr %i.ax, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 408
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNK11QModelIndex15siblingAtColumnEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.bs = load i32, ptr %13, align 8
  %i.bt = icmp sgt i32 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bv = load i32, ptr %i.bu, align 4            ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  %or.cond = select i1 %i.bt, i1 %i.bw, i1 false
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp ne ptr %i.by, null
  %or.cond191 = select i1 %or.cond, i1 %i.bz, i1 false
  br i1 %or.cond191, label %bb.w, label %_ZNK11QModelIndex7isValidEv.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ca = invoke noundef i32 @_ZNK9QTreeView11columnWidthEi(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.av, i32 noundef %i.bv)
          to label %_ZNK11QModelIndex7isValidEv.exit.thread unwind label %bb.af

bb.x:                                             ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.y:                                             ; preds = %bb.c
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.i, %bb.g, %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %11) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.cc, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %.body

bb.ab:                                            ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.m, %bb.n, %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ae:                                            ; preds = %bb.t, %_ZNK11QModelIndex15siblingAtColumnEi.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.au

bb.af:                                            ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNK11QModelIndex7isValidEv.exit.thread:          ; preds = %bb.v, %bb.w
  %.059 = phi i32 [ -1, %bb.v ], [ %i.bv, %bb.w ]
  %.058 = phi i32 [ 0, %bb.v ], [ %i.ca, %bb.w ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.cl = load ptr, ptr %i.be, align 8, !noalias !30 ; 3 uses
  %.not.i126 = icmp eq ptr %i.cl, null
  br i1 %.not.i126, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_ZNK11QModelIndex7isValidEv.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !30
  %i.co = icmp eq i32 %i.cn, %i.ck
  br i1 %i.co, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %12, i64 24, i1 false)
  br label %_ZNK11QModelIndex15siblingAtColumnEi.exit128

bb.ai:                                            ; preds = %bb.ag
  %i.cp = load i32, ptr %12, align 8, !noalias !30
  %i.cq = load ptr, ptr %i.cl, align 8, !noalias !30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !30
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %16, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.cl, i32 noundef %i.cp, i32 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %12)
          to label %_ZNK11QModelIndex15siblingAtColumnEi.exit128 unwind label %bb.an, !inline_history !19

bb.aj:                                            ; preds = %_ZNK11QModelIndex7isValidEv.exit.thread
  store i32 -1, ptr %16, align 8, !alias.scope !30
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 -1, ptr %i.ct, align 4, !alias.scope !30
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false), !alias.scope !30
  br label %_ZNK11QModelIndex15siblingAtColumnEi.exit128

_ZNK11QModelIndex15siblingAtColumnEi.exit128:     ; preds = %bb.aj, %bb.ah, %bb.ai
  %i.cv = load ptr, ptr %i.ax, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 408
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %15, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK11QModelIndex15siblingAtColumnEi.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.cy = load i32, ptr %15, align 8
  %i.cz = icmp sgt i32 %i.cy, -1
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.db = load i32, ptr %i.da, align 4            ; 3 uses
  %i.dc = icmp sgt i32 %i.db, -1
  %or.cond194 = select i1 %i.cz, i1 %i.dc, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = icmp ne ptr %i.de, null
  %or.cond197 = select i1 %or.cond194, i1 %i.df, i1 false
  br i1 %or.cond197, label %bb.al, label %_ZNK11QModelIndex7isValidEv.exit129.thread

bb.al:                                            ; preds = %bb.ak
  %i.dg = invoke noundef i32 @_ZNK9QTreeView11columnWidthEi(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.av, i32 noundef %i.db)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dh = add i32 %i.dg, %.058
  br label %_ZNK11QModelIndex7isValidEv.exit129.thread

bb.an:                                            ; preds = %bb.ai, %_ZNK11QModelIndex15siblingAtColumnEi.exit128
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.at

bb.ao:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNK11QModelIndex7isValidEv.exit129.thread:       ; preds = %bb.ak, %bb.am
  %.057 = phi i32 [ %i.db, %bb.am ], [ -1, %bb.ak ]
  %.056 = phi i32 [ %i.dh, %bb.am ], [ %.058, %bb.ak ]
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dl = load double, ptr %i.ao, align 8
  %i.dm = sitofp i32 %.056 to double
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.do = load <2 x double>, ptr %i.dk, align 8   ; 2 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dq = insertelement <2 x double> %i.dp, double %i.dl, i64 0
  %i.dr = fsub <2 x double> %i.do, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.dr, %i.dt
  %i.dv = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fdiv <2 x double> %i.du, %i.dw
  %i.dy = fptosi <2 x double> %i.dx to <2 x i32>  ; 2 uses
  store <2 x i32> %i.dy, ptr %10, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = icmp eq i32 %i.ea, %.059
  br i1 %i.eb, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZNK11QModelIndex7isValidEv.exit129.thread
  %i.ec = icmp eq i32 %i.ea, %.057
  br i1 %i.ec, label %bb.aq, label %.critedge117

bb.aq:                                            ; preds = %bb.ap
  %i.ed = extractelement <2 x i32> %i.dy, i64 0
  %i.ee = sub i32 %i.ed, %.058
  store i32 %i.ee, ptr %10, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK11QModelIndex7isValidEv.exit129.thread, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.ar
  %i.eh = atomicrmw sub ptr %i.eg, i32 1 acq_rel, align 4
  %.not.i.i130 = icmp eq i32 %i.eh, 1
  br i1 %.not.i.i130, label %bb.as, label %_ZN7QStringD2Ev.exit

bb.as:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.eg, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.as
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not96 = icmp eq ptr %i.ej, null
  br i1 %.not96, label %bb.ay, label %bb.ax

bb.at:                                            ; preds = %bb.ao, %bb.an
  %.pn89 = phi { ptr, i32 } [ %i.dj, %bb.ao ], [ %i.di, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.af, %bb.at, %bb.ae
  %.pn89.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ae ], [ %.pn89, %bb.at ], [ %i.ci, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ad
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn, %bb.au ], [ %i.cg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %.body

.critedge117:                                     ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %.critedge115

.critedge115:                                     ; preds = %_ZNK8QVariant5valueI13timeline_spanEET_v.exit, %_Z12qobject_castIP9QTreeViewET_P7QObject.exit, %bb.o, %_Z12qobject_castIP19QAbstractProxyModelET_P7QObject.exit, %.critedge117
  invoke void @_ZNK19QStyledItemDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(208) %2, ptr noundef align 8 dereferenceable(24) %3)
          to label %bb.cp unwind label %bb.aw

bb.aw:                                            ; preds = %.critedge115
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_ZN7QStringD2Ev.exit
  %i.el = invoke noundef ptr @_ZNK7QWidget5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.ej)
          to label %bb.az unwind label %bb.bk

bb.ay:                                            ; preds = %_ZN7QStringD2Ev.exit
  %i.em = invoke noundef ptr @_ZN12QApplication5styleEv()
          to label %bb.az unwind label %bb.bk

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.en = phi ptr [ %i.el, %bb.ax ], [ %i.em, %bb.ay ] ; 2 uses
  %i.eo = load ptr, ptr %i.ei, align 8
  %i.ep = load ptr, ptr %i.en, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 184
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr noundef align 8 dereferenceable_or_null(16) %i.en, i32 noundef 45, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %i.eo)
          to label %bb.ba unwind label %bb.bk

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  %i.es = invoke noundef ptr @_ZN12QApplication5styleEv()
          to label %bb.bb unwind label %bb.bl

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef align 8 dereferenceable_or_null(16) %i.es)
          to label %bb.bc unwind label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 5, ptr nonnull @.str)
          to label %bb.bd unwind label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.et = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.et, ptr %18, align 16
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ew = load i64, ptr %i.ev, align 16
  store i64 %i.ew, ptr %i.eu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ex = invoke noundef i64 @_ZNK7QString7indexOfERKS_xN2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0, i32 noundef 1)
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd
  %.not198 = icmp eq i64 %i.ex, -1
  %i.ey = load ptr, ptr %18, align 16             ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i133, label %_ZN7QStringD2Ev.exit136, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134:   ; preds = %bb.be
  %i.ez = atomicrmw sub ptr %i.ey, i32 1 acq_rel, align 4
  %.not.i.i135 = icmp eq i32 %i.ez, 1
  br i1 %.not.i.i135, label %bb.bf, label %_ZN7QStringD2Ev.exit136

bb.bf:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134
  %i.fa = load ptr, ptr %18, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fa, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit136

_ZN7QStringD2Ev.exit136:                          ; preds = %bb.be, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i134, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.fb = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i137, label %_ZN7QStringD2Ev.exit140, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i138:   ; preds = %_ZN7QStringD2Ev.exit136
  %i.fc = atomicrmw sub ptr %i.fb, i32 1 acq_rel, align 4
  %.not.i.i139 = icmp eq i32 %i.fc, 1
  br i1 %.not.i.i139, label %bb.bg, label %_ZN7QStringD2Ev.exit140
end_hunk_0
begin_hunk_1_@_ZNK16TimelineDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex:bb.a

bb.bm:                                            ; preds = %bb.bc
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit146

bb.bn:                                            ; preds = %bb.bd
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fn = load ptr, ptr %18, align 16             ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i143, label %_ZN7QStringD2Ev.exit146, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144:   ; preds = %bb.bn
  %i.fo = atomicrmw sub ptr %i.fn, i32 1 acq_rel, align 4
  %.not.i.i145 = icmp eq i32 %i.fo, 1
  br i1 %.not.i.i145, label %bb.bo, label %_ZN7QStringD2Ev.exit146

bb.bo:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144
  %i.fp = load ptr, ptr %18, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fp, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit146

_ZN7QStringD2Ev.exit146:                          ; preds = %bb.bo, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144, %bb.bn, %bb.bm
  %.pn97 = phi { ptr, i32 } [ %i.fl, %bb.bm ], [ %i.fm, %bb.bn ], [ %i.fm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144 ], [ %i.fm, %bb.bo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.fq = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i147, label %_ZN7QStringD2Ev.exit150, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i148

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i148:   ; preds = %_ZN7QStringD2Ev.exit146
  %i.fr = atomicrmw sub ptr %i.fq, i32 1 acq_rel, align 4
  %.not.i.i149 = icmp eq i32 %i.fr, 1
  br i1 %.not.i.i149, label %bb.bp, label %_ZN7QStringD2Ev.exit150

bb.bp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i148
  %i.fs = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fs, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit150

_ZN7QStringD2Ev.exit150:                          ; preds = %bb.bp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i148, %_ZN7QStringD2Ev.exit146, %bb.bl
  %.pn97.pn = phi { ptr, i32 } [ %i.fk, %bb.bl ], [ %.pn97, %_ZN7QStringD2Ev.exit146 ], [ %.pn97, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i148 ], [ %.pn97, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %.body

bb.bq:                                            ; preds = %_ZN8QPalette8setColorENS_10ColorGroupENS_9ColorRoleERK6QColor.exit, %_ZN7QStringD2Ev.exit140
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = and i32 %i.fu, 1                        ; 2 uses
  %.not100 = icmp eq i32 %i.fv, 0
  %i.fw = xor i32 %i.fv, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  %i.fy = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fx, i32 noundef %i.fw, i32 noundef 6)
          to label %.invoke unwind label %bb.br

.invoke:                                          ; preds = %bb.bq
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef align 4 dereferenceable(16) %i.ga, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 108
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = and i32 %i.gc, 2
  %.not199 = icmp eq i32 %i.gd, 0
  %. = select i1 %.not199, i32 9, i32 16
  %i.ge = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fx, i32 noundef %i.fw, i32 noundef %.)
          to label %_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit154 unwind label %bb.bs

_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit154: ; preds = %.invoke
  %.pn200 = load ptr, ptr %i.ge, align 8
  %i.gf = getelementptr i8, ptr %.pn200, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef align 4 dereferenceable(16) %i.gf, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  %i.gg = invoke noundef i32 @_ZN10ColorUtils10alphaBlendERK6QColorS2_d(ptr noundef nonnull align 4 dereferenceable(14) %19, ptr noundef nonnull align 4 dereferenceable(14) %20, double noundef 1.600000e-01)
          to label %.critedge unwind label %bb.bt

.critedge:                                        ; preds = %_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit154
  call void @_ZN6QColorC1Ej(ptr noundef nonnull align 4 dereferenceable_or_null(14) %21, i32 noundef %i.gg) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %20, ptr noundef nonnull align 4 dereferenceable(14) %21, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.gh = load i32, ptr %i.ft, align 8            ; 2 uses
  %i.gi = and i32 %i.gh, 65536
  %.not.i157 = icmp eq i32 %i.gi, 0
  %spec.select = select i1 %.not.i157, i32 2, i32 %i.fw
  %.0 = select i1 %.not100, i32 1, i32 %spec.select ; 2 uses
  %i.gj = and i32 %i.gh, 32768
  %.not101 = icmp eq i32 %i.gj, 0
  br i1 %.not101, label %bb.bz, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bs:                                            ; preds = %.invoke, %bb.bu, %bb.bz
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bt:                                            ; preds = %_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit154
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.da

bb.bu:                                            ; preds = %.critedge
  %i.gn = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fx, i32 noundef %.0, i32 noundef 13)
          to label %bb.bv unwind label %bb.bs

bb.bv:                                            ; preds = %bb.bu
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %19, ptr noundef align 4 dereferenceable(14) %i.gp, i64 14, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.gq = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fx, i32 noundef %.0, i32 noundef 12)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = invoke noundef i32 @_ZN10ColorUtils10alphaBlendERK6QColorS2_d(ptr noundef nonnull align 4 dereferenceable(14) %19, ptr noundef align 4 dereferenceable(14) %i.gs, double noundef 1.600000e-01)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN6QColorC1Ej(ptr noundef nonnull align 4 dereferenceable_or_null(14) %22, i32 noundef %i.gt) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %20, ptr noundef nonnull align 4 dereferenceable(14) %22, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv, %bb.bw
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.da

bb.bz:                                            ; preds = %bb.bx, %.critedge
  invoke void @_ZN8QPainter4saveEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.ca unwind label %bb.bs

bb.ca:                                            ; preds = %bb.bz
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %i.gw = load <2 x i32>, ptr %i.gv, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4
  %i.gx = load i32, ptr %10, align 8
  %i.gy = insertelement <2 x i32> <i32 poison, i32 1>, i32 %i.gx, i64 0
  %i.gz = add <2 x i32> %i.gw, %i.gy
  %i.ha = load i32, ptr %i.dn, align 4
  invoke void @_ZN8QPainter11setClipRectERK5QRectN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i32 noundef 1)
          to label %bb.cb unwind label %bb.cr

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN8QPainter6setPenEN2Qt8PenStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
          to label %bb.cc unwind label %bb.cr

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %23, ptr noundef nonnull align 4 dereferenceable(14) %20, i32 noundef 1)
          to label %bb.cd unwind label %bb.cs

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ce unwind label %bb.ct

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.hb = sitofp <2 x i32> %i.gz to <2 x double>
  store <2 x double> %i.hb, ptr %4, align 16
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hd = sitofp i32 %i.ha to double
  store double %i.hd, ptr %i.hc, align 16
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hf = xor i32 %.sroa.8.0.copyload, -1
  %i.hg = add i32 %.sroa.15.0.copyload, %i.hf
  %i.hh = sitofp i32 %i.hg to double
  store double %i.hh, ptr %i.he, align 8
  invoke void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef 3.000000e+00, double noundef 3.000000e+00, i32 noundef 0)
          to label %bb.cf unwind label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  invoke void @_ZN8QPainter7restoreEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.cg unwind label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN8QPainter4saveEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.ch unwind label %bb.cr

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %19)
          to label %bb.ci unwind label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.hi = load ptr, ptr %i.c, align 8, !noalias !31 ; 3 uses
  %.not.i163 = icmp eq ptr %i.hi, null
  br i1 %.not.i163, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !31
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !31
  invoke void %i.hl(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %25, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.hi, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i32 noundef 0)
          to label %_ZNK11QModelIndex4dataEi.exit165 unwind label %bb.cv, !inline_history !8

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 24, i1 false), !alias.scope !31
  %i.hm = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i64 2, ptr %i.hm, align 8, !alias.scope !31
  br label %_ZNK11QModelIndex4dataEi.exit165

_ZNK11QModelIndex4dataEi.exit165:                 ; preds = %bb.ck, %bb.cj
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %24, ptr noundef nonnull align 8 dereferenceable_or_null(32) %25)
          to label %bb.cl unwind label %bb.cw

bb.cl:                                            ; preds = %_ZNK11QModelIndex4dataEi.exit165
  invoke void @_ZN8QPainter8drawTextERK5QRectiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i32 noundef 132, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef null)
          to label %bb.cm unwind label %bb.cx

bb.cm:                                            ; preds = %bb.cl
  %i.hn = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i166, label %_ZN7QStringD2Ev.exit169, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167:   ; preds = %bb.cm
  %i.ho = atomicrmw sub ptr %i.hn, i32 1 acq_rel, align 4
  %.not.i.i168 = icmp eq i32 %i.ho, 1
  br i1 %.not.i.i168, label %bb.cn, label %_ZN7QStringD2Ev.exit169

bb.cn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167
  %i.hp = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hp, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit169

_ZN7QStringD2Ev.exit169:                          ; preds = %bb.cm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167, %bb.cn
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  invoke void @_ZN8QPainter7restoreEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %_ZN7QStringD2Ev.exit169
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.cp

bb.cp:                                            ; preds = %.critedge115, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.hq) #13
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8            ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i170, label %_ZN20QStyleOptionViewItemD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.cp
  %i.ht = atomicrmw sub ptr %i.hs, i32 1 acq_rel, align 4
  %.not.i.i.i171 = icmp eq i32 %i.ht, 1
  br i1 %.not.i.i.i171, label %bb.cq, label %_ZN20QStyleOptionViewItemD2Ev.exit

bb.cq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.hu = load ptr, ptr %i.hr, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hu, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN20QStyleOptionViewItemD2Ev.exit

_ZN20QStyleOptionViewItemD2Ev.exit:               ; preds = %bb.cp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.cq
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 160
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.hv) #13
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZN7QLocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.hw) #13
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 88
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.hx) #13
  call void @_ZN12QStyleOptionD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable_or_null(208) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret void

bb.cr:                                            ; preds = %bb.ce, %_ZN7QStringD2Ev.exit169, %bb.ch, %bb.cg, %bb.cf, %bb.cb, %bb.ca
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cs:                                            ; preds = %bb.cc
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cd
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %23) #13
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn102 = phi { ptr, i32 } [ %i.ia, %bb.ct ], [ %i.hz, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  br label %bb.da

bb.cv:                                            ; preds = %bb.cj
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cw:                                            ; preds = %_ZNK11QModelIndex4dataEi.exit165
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit175

bb.cx:                                            ; preds = %bb.cl
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ie = load ptr, ptr %24, align 8              ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i172, label %_ZN7QStringD2Ev.exit175, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i173

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i173:   ; preds = %bb.cx
  %i.if = atomicrmw sub ptr %i.ie, i32 1 acq_rel, align 4
  %.not.i.i174 = icmp eq i32 %i.if, 1
  br i1 %.not.i.i174, label %bb.cy, label %_ZN7QStringD2Ev.exit175

bb.cy:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i173
  %i.ig = load ptr, ptr %24, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ig, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit175

_ZN7QStringD2Ev.exit175:                          ; preds = %bb.cy, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i173, %bb.cx, %bb.cw
  %.pn104 = phi { ptr, i32 } [ %i.ic, %bb.cw ], [ %i.id, %bb.cx ], [ %i.id, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i173 ], [ %i.id, %bb.cy ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %25) #13
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN7QStringD2Ev.exit175, %bb.cv
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %_ZN7QStringD2Ev.exit175 ], [ %i.ib, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.da

bb.da:                                            ; preds = %bb.cr, %bb.cu, %bb.cz, %bb.by, %bb.bt, %bb.bs
  %.pn107.pn = phi { ptr, i32 } [ %i.gm, %bb.bt ], [ %i.gl, %bb.bs ], [ %i.gu, %bb.by ], [ %i.hy, %bb.cr ], [ %.pn104.pn, %bb.cz ], [ %.pn102, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.br
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.da ], [ %i.gk, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %.body

.body:                                            ; preds = %bb.bk, %bb.bj, %_ZN7QStringD2Ev.exit150, %bb.db, %bb.ab, %bb.av, %bb.ac, %bb.aw, %bb.aa
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.ac ], [ %i.ek, %bb.aw ], [ %.pn, %bb.aa ], [ %i.ce, %bb.ab ], [ %.pn89.pn.pn.pn, %bb.av ], [ %.pn107.pn.pn, %bb.db ], [ %.pn97.pn, %_ZN7QStringD2Ev.exit150 ], [ %i.fj, %bb.bk ], [ %i.fi, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.dc

bb.dc:                                            ; preds = %.body, %bb.x
  %.pn107.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn, %.body ], [ %i.cb, %bb.x ]
  call void @_ZN20QStyleOptionViewItemD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable_or_null(208) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  resume { ptr, i32 } %.pn107.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN20QStyleOptionViewItemC2ERKS_(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef align 8 dereferenceable(208) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN12QStyleOptionC2Eii(ptr noundef align 8 dereferenceable_or_null(64) %0, i32 noundef 1, i32 noundef 10)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_ZN5QFontC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.e)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_ZN7QLocaleC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.g)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @_ZN5QIconC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.k) #13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_ZN6QBrushC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.m)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef align 8 dereferenceable(64) ptr @_ZN12QStyleOptionaSERKS_(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef align 8 dereferenceable(208) %1)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = invoke noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.p)
          to label %.noexc9 unwind label %bb.h    ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN20QStyleOptionViewItemD2Ev:bb.a
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.e, i64 noundef 2, i64 noundef 8) #13
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN7QLocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.h) #13
  tail call void @_ZN12QStyleOptionD2Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64) %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QStyledItemDelegate10metaObjectEv(ptr noundef align 8 dereferenceable_or_null(16)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN19QStyledItemDelegate11qt_metacastEPKc(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZN19QStyledItemDelegate11qt_metacallEN11QMetaObject4CallEiPPv(ptr noundef align 8 dereferenceable_or_null(16), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN19QStyledItemDelegateD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16TimelineDelegateD0Ev(ptr noundef align 8 dereferenceable_or_null(20) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN19QStyledItemDelegateD2Ev(ptr noundef align 8 dead_on_return(20) dereferenceable_or_null(20) %0) #13
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 24) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN7QObject5eventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN19QStyledItemDelegate11eventFilterEP7QObjectP6QEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject10timerEventEP11QTimerEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject10childEventEP11QChildEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject11customEventEP6QEvent(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject13connectNotifyERK11QMetaMethod(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 1) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject16disconnectNotifyERK11QMetaMethod(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 1) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @_ZNK19QStyledItemDelegate8sizeHintERK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(208), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QStyledItemDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 8 dereferenceable(208), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK21QAbstractItemDelegate13destroyEditorEP7QWidgetRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK19QStyledItemDelegate13setEditorDataEP7QWidgetRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK19QStyledItemDelegate12setModelDataEP7QWidgetP18QAbstractItemModelRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef, ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK19QStyledItemDelegate20updateEditorGeometryEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef align 8 dereferenceable(208), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN19QStyledItemDelegate11editorEventEP6QEventP18QAbstractItemModelRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef, ptr noundef align 8 dereferenceable(208), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN21QAbstractItemDelegate9helpEventEP10QHelpEventP17QAbstractItemViewRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, ptr noundef, ptr noundef align 8 dereferenceable(208), ptr noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK21QAbstractItemDelegate13paintingRolesEv(ptr dead_on_unwind writable sret(%class.QList) align 8, ptr noundef align 8 dereferenceable_or_null(16)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK19QStyledItemDelegate11displayTextERK8QVariantRK7QLocale(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(32), ptr noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QStyleOptionC2Eii(ptr noundef align 8 dereferenceable_or_null(64), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFontC1Ev(ptr noundef align 8 dereferenceable_or_null(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QLocaleC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QIconC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QBrushC1Ev(ptr noundef align 8 dereferenceable_or_null(8)) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QIconD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QLocaleD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QFontD1Ev(ptr noundef align 8 dead_on_return(12) dereferenceable_or_null(12)) unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QStyleOptionD2Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(64) ptr @_ZN12QStyleOptionaSERKS_(ptr noundef align 8 dereferenceable_or_null(64), ptr noundef align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(12) ptr @_ZN5QFontaSERKS_(ptr noundef align 8 dereferenceable_or_null(12), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZN7QLocaleaSERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZN5QIconaSERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZN6QBrushaSERKS_(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i64 @_ZNK7QString7indexOfERKS_xN2Qt15CaseSensitivityE(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind writable sret(%class.QString) align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPalette8setBrushENS_10ColorGroupENS_9ColorRoleERK6QBrush(ptr noundef align 8 dereferenceable_or_null(12), i32 noundef, i32 noundef, ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter15drawRoundedRectERK6QRectFddN2Qt8SizeModeE(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), double noundef, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr, ptr noundef, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @_ZNK8QVariant8metaTypeEv(ptr noundef align 8 dereferenceable_or_null(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE13getDefaultCtrEvENUlPKNS_18QMetaTypeInterfaceEPvE_8__invokeES5_S6_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE10getCopyCtrEvENUlPKNS_18QMetaTypeInterfaceEPvPKvE_8__invokeES5_S6_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %1, ptr noundef align 8 dereferenceable(48) %2, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE10getMoveCtrEvENUlPKNS_18QMetaTypeInterfaceEPvS6_E_8__invokeES5_S6_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %1, ptr noundef align 8 dereferenceable(48) %2, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI13timeline_spanE17getLegacyRegisterEvENUlvE_8__invokeEv() #11 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEv(), !inline_history !32 ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_ZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEv() local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.QByteArray, align 8          ; 9 uses
  %1 = alloca %"struct.std::array", align 1       ; 6 uses
  %2 = alloca %class.QByteArray, align 8          ; 9 uses
  %i.a = load atomic i32, ptr @_ZZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEvE11metatype_id acquire, align 4 ; 2 uses
  %.not.not = icmp eq i32 %i.a, 0
  br i1 %.not.not, label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit, label %bb.k

_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 1 dereferenceable(14) @__const._ZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEv.arr, i64 14, i1 false)
  %i.b = invoke noundef i32 @_ZN9QtPrivate13compareMemoryE14QByteArrayViewS0_(i64 13, ptr nonnull %1, i64 13, ptr nonnull @.str.2)
          to label %_Zeq14QByteArrayViewS_.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #15
  unreachable

_Zeq14QByteArrayViewS_.exit:                      ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %bb.c, label %_Zeq14QByteArrayViewS_.exit.thread

bb.c:                                             ; preds = %_Zeq14QByteArrayViewS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN10QByteArrayC1EPKcx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, ptr noundef nonnull %1, i64 noundef -1)
  %i.f = invoke noundef i32 @_Z41qRegisterNormalizedMetaTypeImplementationI13timeline_spanEiRK10QByteArray(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit unwind label %bb.e, !inline_history !33

_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit: ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %.not.i.i10 = icmp eq i32 %i.h, 1
  br i1 %.not.i.i10, label %bb.d, label %_ZN10QByteArrayD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.i = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 1, i64 noundef 8) #13
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i11, label %_ZN10QByteArrayD2Ev.exit14, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i12

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i12:     ; preds = %bb.e
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %.not.i.i13 = icmp eq i32 %i.l, 1
  br i1 %.not.i.i13, label %bb.f, label %_ZN10QByteArrayD2Ev.exit14

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i12
  %i.m = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.m, i64 noundef 1, i64 noundef 8) #13
  br label %_ZN10QByteArrayD2Ev.exit14

common.resume:                                    ; preds = %_ZN10QByteArrayD2Ev.exit5.i, %_ZN10QByteArrayD2Ev.exit14
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZN10QByteArrayD2Ev.exit14 ], [ %i.r, %_ZN10QByteArrayD2Ev.exit5.i ]
  resume { ptr, i32 } %common.resume.op

_ZN10QByteArrayD2Ev.exit14:                       ; preds = %bb.e, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i12, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %common.resume

_Zeq14QByteArrayViewS_.exit.thread:               ; preds = %_Zeq14QByteArrayViewS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @_ZN11QMetaObject14normalizedTypeEPKc(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %0, ptr noundef nonnull @.str.2), !inline_history !34
  %i.n = invoke noundef i32 @_Z41qRegisterNormalizedMetaTypeImplementationI13timeline_spanEiRK10QByteArray(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit.i unwind label %bb.h, !inline_history !35

_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit.i: ; preds = %_Zeq14QByteArrayViewS_.exit.thread
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_Z17qRegisterMetaTypeI13timeline_spanEiPKc.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i:     ; preds = %_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit.i
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %.not.i.i.i15 = icmp eq i32 %i.p, 1
  br i1 %.not.i.i.i15, label %bb.g, label %_Z17qRegisterMetaTypeI13timeline_spanEiPKc.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i
  %i.q = load ptr, ptr %0, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.q, i64 noundef 1, i64 noundef 8) #13, !inline_history !34
  br label %_Z17qRegisterMetaTypeI13timeline_spanEiPKc.exit

bb.h:                                             ; preds = %_Zeq14QByteArrayViewS_.exit.thread
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i2.i, label %_ZN10QByteArrayD2Ev.exit5.i, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i:    ; preds = %bb.h
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.t, 1
  br i1 %.not.i.i4.i, label %bb.i, label %_ZN10QByteArrayD2Ev.exit5.i

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i
  %i.u = load ptr, ptr %0, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 1, i64 noundef 8) #13, !inline_history !34
  br label %_ZN10QByteArrayD2Ev.exit5.i

_ZN10QByteArrayD2Ev.exit5.i:                      ; preds = %bb.i, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  br label %common.resume

_Z17qRegisterMetaTypeI13timeline_spanEiPKc.exit:  ; preds = %_Z27qRegisterNormalizedMetaTypeI13timeline_spanEiRK10QByteArray.exit.i, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  br label %bb.j

bb.j:                                             ; preds = %_Z17qRegisterMetaTypeI13timeline_spanEiPKc.exit, %_ZN10QByteArrayD2Ev.exit
  %.sink = phi i32 [ %i.n, %_Z17qRegisterMetaTypeI13timeline_spanEiPKc.exit ], [ %i.f, %_ZN10QByteArrayD2Ev.exit ] ; 2 uses
  store atomic i32 %.sink, ptr @_ZZN11QMetaTypeIdI13timeline_spanE14qt_metatype_idEvE11metatype_id release, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.2 = phi i32 [ %.sink, %bb.j ], [ %i.a, %bb.a ]
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QByteArrayC1EPKcx(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZN9QtPrivate13compareMemoryE14QByteArrayViewS0_(i64, ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_Z41qRegisterNormalizedMetaTypeImplementationI13timeline_spanEiRK10QByteArray(ptr noundef align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QMetaType, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE, ptr %1, align 8
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i = icmp eq i32 %i.a, 0
  br i1 %.not6.not.i, label %_ZNK9QMetaType2idEi.exit, label %_ZNK9QMetaType4nameEv.exit

_ZNK9QMetaType2idEi.exit:                         ; preds = %bb.a
  %i.b = call noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1) ; 2 uses
  %.pr = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i2 = icmp eq ptr %.pr, null
  br i1 %.not.i2, label %_ZneRK10QByteArrayPKc.exit, label %_ZNK9QMetaType4nameEv.exit

_ZNK9QMetaType4nameEv.exit:                       ; preds = %bb.a, %_ZNK9QMetaType2idEi.exit
  %.1.i6 = phi i32 [ %i.b, %_ZNK9QMetaType2idEi.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = phi ptr [ %.pr, %_ZNK9QMetaType2idEi.exit ], [ @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI13timeline_spanE8metaTypeE, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i3, label %_ZneRK10QByteArrayPKc.exit, label %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit.i

_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit.i: ; preds = %_ZNK9QMetaType4nameEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #13
  %i.k = invoke noundef i32 @_ZN9QtPrivate13compareMemoryE14QByteArrayViewS0_(i64 %i.i, ptr %i.g, i64 %i.j, ptr nonnull %i.e)
          to label %.split unwind label %bb.b

.split:                                           ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit.i
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN14QByteArrayViewC2IPKcTnNSt9enable_ifIXsr9QtPrivate28IsCompatibleByteArrayPointerIT_EE5valueEbE4typeELb1EEERKS4_.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #15
  unreachable

_ZneRK10QByteArrayPKc.exit:                       ; preds = %_ZNK9QMetaType2idEi.exit, %_ZNK9QMetaType4nameEv.exit
  %.sroa.0.0.copyload16 = phi ptr [ %i.c, %_ZNK9QMetaType4nameEv.exit ], [ null, %_ZNK9QMetaType2idEi.exit ]
  %.1.i711 = phi i32 [ %.1.i6, %_ZNK9QMetaType4nameEv.exit ], [ %i.b, %_ZNK9QMetaType2idEi.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %.not14 = icmp eq i64 %i.o, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split._crit_edge, %_ZneRK10QByteArrayPKc.exit
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %.split._crit_edge ], [ %.sroa.0.0.copyload16, %_ZneRK10QByteArrayPKc.exit ]
  %.1.i71013 = phi i32 [ %.1.i6, %.split._crit_edge ], [ %.1.i711, %_ZneRK10QByteArrayPKc.exit ]
  call void @_ZN9QMetaType25registerNormalizedTypedefERK10QByteArrayS_(ptr noundef align 8 dereferenceable(24) %0, ptr %.sroa.0.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %.split, %bb.c, %_ZneRK10QByteArrayPKc.exit
  %.1.i71012 = phi i32 [ %.1.i6, %.split ], [ %.1.i71013, %bb.c ], [ %.1.i711, %_ZneRK10QByteArrayPKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.1.i71012
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QMetaType25registerNormalizedTypedefERK10QByteArrayS_(ptr noundef align 8 dereferenceable(24), ptr) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QMetaObject14normalizedTypeEPKc(ptr dead_on_unwind writable sret(%class.QByteArray) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef align 8 dereferenceable_or_null(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, i1 true, !"_ZNK11QModelIndex4dataEi"}
!7 = distinct !{!7, !6, !"_ZNK11QModelIndex4dataEi: argument 0"}
!8 = distinct !{null}
!9 = distinct !{!9, i1 true, !"_ZNK8QVariant5valueI13timeline_spanEET_v"}
!10 = distinct !{!10, !9, !"_ZNK8QVariant5valueI13timeline_spanEET_v: argument 0:thread"}
!11 = distinct !{!11, i1 true, !"_Z13qvariant_castI13timeline_spanET_RK8QVariant"}
!12 = distinct !{!12, !11, !"_Z13qvariant_castI13timeline_spanET_RK8QVariant: argument 0:thread"}
!13 = distinct !{!13, i1 true, !"_ZNK8QVariant5valueI13timeline_spanEET_v"}
!14 = distinct !{!14, !13, !"_ZNK8QVariant5valueI13timeline_spanEET_v: argument 0"}
!15 = distinct !{!15, i1 true, !"_Z13qvariant_castI13timeline_spanET_RK8QVariant"}
!16 = distinct !{!16, !15, !"_Z13qvariant_castI13timeline_spanET_RK8QVariant: argument 0"}
!17 = distinct !{!17, i1 true, !"_ZNK11QModelIndex15siblingAtColumnEi"}
!18 = distinct !{!18, !17, !"_ZNK11QModelIndex15siblingAtColumnEi: argument 0"}
!19 = distinct !{null}
!20 = distinct !{!20, i1 true, !"_ZNK11QModelIndex15siblingAtColumnEi"}
!21 = distinct !{!21, !20, !"_ZNK11QModelIndex15siblingAtColumnEi: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZNK11QModelIndex4dataEi"}
!23 = distinct !{!23, !22, !"_ZNK11QModelIndex4dataEi: argument 0"}
!24 = !{!7}
!25 = !{!12, !10}
!26 = !{!16, !14}
!27 = !{!14}
!28 = !{!16}
!29 = !{!18}
!30 = !{!21}
!31 = !{!23}
!32 = distinct !{null, null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null, null}
end_hunk_2
