Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/overlay_scroll_bar?download=true
inline.NumInlined: 221
inline.NumDeleted: 133
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%struct.QMetaObject = type { %"struct.QMetaObject::Data" }
%"struct.QMetaObject::Data" = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%"class.QMetaObject::Connection" = type { ptr }
%class.QString = type { %struct.QArrayDataPointer.22 }
%struct.QArrayDataPointer.22 = type { ptr, ptr, i64 }
%class.QStyleOptionSlider = type { %class.QStyleOptionComplex, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, double, i8, %class.QFlags.1 }
%class.QStyleOptionComplex = type { %class.QStyleOption, %class.QFlags.0, %class.QFlags.0 }
%class.QStyleOption = type { i32, i32, %class.QFlags, i32, %class.QRect, %class.QFontMetrics, %class.QPalette, ptr }
%class.QFlags = type { i32 }
%class.QRect = type { i32, i32, i32, i32 }
%class.QFontMetrics = type { %class.QExplicitlySharedDataPointer }
%class.QExplicitlySharedDataPointer = type { ptr }
%class.QPalette = type <{ ptr, i32, [4 x i8] }>
%class.QFlags.0 = type { i32 }
%class.QFlags.1 = type { i32 }
%class.QSize = type { i32, i32 }
%class.QPoint = type { i32, i32 }
%class.QPointF = type { double, double }
%class.QLine = type { %class.QPoint, %class.QPoint }
%class.QRectF = type { double, double, double, double }
%class.QPainter = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.3" }
%"struct.std::_Head_base.3" = type { ptr }
%class.QImage = type { %class.QPaintDevice.base, ptr }
%class.QPaintDevice.base = type <{ ptr, i16 }>
%class.QBrush = type { %"class.std::unique_ptr.4" }
%"class.std::unique_ptr.4" = type { %"struct.std::__uniq_ptr_data.5" }
%"struct.std::__uniq_ptr_data.5" = type { %"class.std::__uniq_ptr_impl.6" }
%"class.std::__uniq_ptr_impl.6" = type { %"class.std::tuple.7" }
%"class.std::tuple.7" = type { %"struct.std::_Tuple_impl.8" }
%"struct.std::_Tuple_impl.8" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { ptr }
%class.QColor = type <{ i32, %"union.QColor::CT", [2 x i8] }>
%"union.QColor::CT" = type { %struct.anon }
%struct.anon = type { i16, i16, i16, i16, i16 }
%class.QPixmap = type { %class.QPaintDevice.base, %class.QExplicitlySharedDataPointer.23 }
%class.QExplicitlySharedDataPointer.23 = type { ptr }
%class.QIcon = type { ptr }

$_ZN16OverlayScrollBar13setChildRangeEii = comdat any

$_ZN5QListIiED2Ev = comdat any

$_ZN13OsbProxyStyleD0Ev = comdat any

$_ZNK13OsbProxyStyle9styleHintEN6QStyle9StyleHintEPK12QStyleOptionPK7QWidgetP16QStyleHintReturn = comdat any

$_ZN9QtPrivate11QSlotObjectIM16OverlayScrollBarFviiENS_4ListIJiiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate11QSlotObjectIM15QAbstractSliderFviENS_4ListIJiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$qt_version_tag_use = comdat any

$_ZTV13OsbProxyStyle = comdat any

$_ZTI13OsbProxyStyle = comdat any

$_ZTS13OsbProxyStyle = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV16OverlayScrollBar = external constant { [57 x ptr], [10 x ptr] }, align 8
@_ZTV13OsbProxyStyle = linkonce_odr constant { [37 x ptr] } { [37 x ptr] [ptr null, ptr @_ZTI13OsbProxyStyle, ptr @_ZNK11QProxyStyle10metaObjectEv, ptr @_ZN11QProxyStyle11qt_metacastEPKc, ptr @_ZN11QProxyStyle11qt_metacallEN11QMetaObject4CallEiPPv, ptr @_ZN11QProxyStyleD2Ev, ptr @_ZN13OsbProxyStyleD0Ev, ptr @_ZN11QProxyStyle5eventEP6QEvent, ptr @_ZN7QObject11eventFilterEPS_P6QEvent, ptr @_ZN7QObject10timerEventEP11QTimerEvent, ptr @_ZN7QObject10childEventEP11QChildEvent, ptr @_ZN7QObject11customEventEP6QEvent, ptr @_ZN7QObject13connectNotifyERK11QMetaMethod, ptr @_ZN7QObject16disconnectNotifyERK11QMetaMethod, ptr @_ZN11QProxyStyle6polishEP7QWidget, ptr @_ZN11QProxyStyle8unpolishEP7QWidget, ptr @_ZN11QProxyStyle6polishEP12QApplication, ptr @_ZN11QProxyStyle8unpolishEP12QApplication, ptr @_ZN11QProxyStyle6polishER8QPalette, ptr @_ZNK11QProxyStyle12itemTextRectERK12QFontMetricsRK5QRectibRK7QString, ptr @_ZNK11QProxyStyle14itemPixmapRectERK5QRectiRK7QPixmap, ptr @_ZNK11QProxyStyle12drawItemTextEP8QPainterRK5QRectiRK8QPalettebRK7QStringNS5_9ColorRoleE, ptr @_ZNK11QProxyStyle14drawItemPixmapEP8QPainterRK5QRectiRK7QPixmap, ptr @_ZNK11QProxyStyle15standardPaletteEv, ptr @_ZNK11QProxyStyle13drawPrimitiveEN6QStyle16PrimitiveElementEPK12QStyleOptionP8QPainterPK7QWidget, ptr @_ZNK11QProxyStyle11drawControlEN6QStyle14ControlElementEPK12QStyleOptionP8QPainterPK7QWidget, ptr @_ZNK11QProxyStyle14subElementRectEN6QStyle10SubElementEPK12QStyleOptionPK7QWidget, ptr @_ZNK11QProxyStyle18drawComplexControlEN6QStyle14ComplexControlEPK19QStyleOptionComplexP8QPainterPK7QWidget, ptr @_ZNK11QProxyStyle21hitTestComplexControlEN6QStyle14ComplexControlEPK19QStyleOptionComplexRK6QPointPK7QWidget, ptr @_ZNK11QProxyStyle14subControlRectEN6QStyle14ComplexControlEPK19QStyleOptionComplexNS0_10SubControlEPK7QWidget, ptr @_ZNK11QProxyStyle11pixelMetricEN6QStyle11PixelMetricEPK12QStyleOptionPK7QWidget, ptr @_ZNK11QProxyStyle16sizeFromContentsEN6QStyle12ContentsTypeEPK12QStyleOptionRK5QSizePK7QWidget, ptr @_ZNK13OsbProxyStyle9styleHintEN6QStyle9StyleHintEPK12QStyleOptionPK7QWidgetP16QStyleHintReturn, ptr @_ZNK11QProxyStyle14standardPixmapEN6QStyle14StandardPixmapEPK12QStyleOptionPK7QWidget, ptr @_ZNK11QProxyStyle12standardIconEN6QStyle14StandardPixmapEPK12QStyleOptionPK7QWidget, ptr @_ZNK11QProxyStyle19generatedIconPixmapEN5QIcon4ModeERK7QPixmapPK12QStyleOption, ptr @_ZNK11QProxyStyle13layoutSpacingEN11QSizePolicy11ControlTypeES1_N2Qt11OrientationEPK12QStyleOptionPK7QWidget] }, comdat, align 8
@_ZTI13OsbProxyStyle = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13OsbProxyStyle, ptr @_ZTI11QProxyStyle }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13OsbProxyStyle = linkonce_odr constant [16 x i8] c"13OsbProxyStyle\00", comdat, align 1
@_ZTI11QProxyStyle = external constant ptr
@_ZN15QAbstractSlider16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN16OverlayScrollBarC1EN2Qt11OrientationEP7QWidget = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN16OverlayScrollBarC2EN2Qt11OrientationEP7QWidget
@_ZN16OverlayScrollBarD1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OverlayScrollBarD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBarC2EN2Qt11OrientationEP7QWidget(ptr noundef align 8 dereferenceable_or_null(196) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %4 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %5 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %6 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN10QScrollBarC2EN2Qt11OrientationEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV16OverlayScrollBar, i64 16), ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV16OverlayScrollBar, i64 472), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  invoke void @_ZN10QScrollBarC1EN2Qt11OrientationEP7QWidget(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.j, i32 noundef %1, ptr noundef %0)
          to label %bb.b unwind label %7

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZN6QImageC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.k) #11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @_ZN6QImageC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.l) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable_or_null(10) %i.i, i32 noundef 12)
          to label %bb.c unwind label %bb.p, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.t = sitofp i32 %i.s to double
  %i.u = fmul nnan double %i.t, f0x3EF0000000000000
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = fptosi double %i.u to i32
  store i32 %i.w, ptr %i.v, align 8
  %i.x = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #12
          to label %bb.d unwind label %bb.p       ; 6 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  invoke void @_ZN11QProxyStyleC2EP6QStyle(ptr noundef align 8 dereferenceable_or_null(16) %i.x, ptr noundef null)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTV13OsbProxyStyle, i64 16), ptr %i.x, align 16
  %i.y = getelementptr i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8
  invoke void @_ZN7QWidget8setStyleEP6QStyle(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %i.x)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.z = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #12
          to label %bb.g unwind label %bb.p       ; 5 uses

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  invoke void @_ZN11QProxyStyleC2EP6QStyle(ptr noundef align 8 dereferenceable_or_null(16) %i.z, ptr noundef null)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTV13OsbProxyStyle, i64 16), ptr %i.z, align 16
  %i.aa = getelementptr i8, ptr %0, i64 48
  store ptr %i.z, ptr %i.aa, align 8
  invoke void @_ZN16OverlayScrollBar16updateChildStyleEv(ptr noundef align 8 dereferenceable_or_null(196) %0)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7QWidget5raiseEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.j)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7QObject18installEventFilterEPS_(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.j, ptr noundef %0)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider12rangeChangedEii to i64), ptr %i.g, align 8, !noalias !16
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !16
  store i64 ptrtoint (ptr @_ZN16OverlayScrollBar13setChildRangeEii to i64), ptr %i.h, align 8, !noalias !16
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !16
  %i.ab = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #12
          to label %.noexc unwind label %bb.p, !noalias !16 ; 5 uses

.noexc:                                           ; preds = %bb.k
  store i32 1, ptr %i.ab, align 4, !noalias !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM16OverlayScrollBarFviiENS_4ListIJiiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ac, align 8, !noalias !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 ptrtoint (ptr @_ZN16OverlayScrollBar13setChildRangeEii to i64), ptr %i.ad, align 8, !noalias !16
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !16
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %i.ab, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15QAbstractSlider16staticMetaObjectE)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider12valueChangedEi to i64), ptr %i.e, align 8, !noalias !17
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !17
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider8setValueEi to i64), ptr %i.f, align 8, !noalias !17
  %.fca.1.gep.i32 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep.i32, align 8, !noalias !17
  %i.ae = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #12
          to label %.noexc34 unwind label %bb.p, !noalias !17 ; 5 uses

.noexc34:                                         ; preds = %bb.l
  store i32 1, ptr %i.ae, align 4, !noalias !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM15QAbstractSliderFviENS_4ListIJiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.af, align 8, !noalias !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider8setValueEi to i64), ptr %i.ag, align 8, !noalias !17
  %.repack7.i.i33 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %.repack7.i.i33, align 8, !noalias !17
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f, ptr noundef %i.ae, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15QAbstractSlider16staticMetaObjectE)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider12valueChangedEi to i64), ptr %i.c, align 8, !noalias !18
  %.fca.1.gep12.i39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep12.i39, align 8, !noalias !18
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider8setValueEi to i64), ptr %i.d, align 8, !noalias !18
  %.fca.1.gep.i40 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i40, align 8, !noalias !18
  %i.ah = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #12
          to label %.noexc42 unwind label %bb.p, !noalias !18 ; 5 uses

.noexc42:                                         ; preds = %bb.m
  store i32 1, ptr %i.ah, align 4, !noalias !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM15QAbstractSliderFviENS_4ListIJiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ai, align 8, !noalias !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider8setValueEi to i64), ptr %i.aj, align 8, !noalias !18
  %.repack7.i.i41 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %.repack7.i.i41, align 8, !noalias !18
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ah, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15QAbstractSlider16staticMetaObjectE)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider15actionTriggeredEi to i64), ptr %i.a, align 8, !noalias !19
  %.fca.1.gep12.i48 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i48, align 8, !noalias !19
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider15actionTriggeredEi to i64), ptr %i.b, align 8, !noalias !19
  %.fca.1.gep.i49 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i49, align 8, !noalias !19
  %i.ak = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #12
          to label %.noexc51 unwind label %bb.p, !noalias !19 ; 5 uses

.noexc51:                                         ; preds = %bb.n
  store i32 1, ptr %i.ak, align 4, !noalias !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM15QAbstractSliderFviENS_4ListIJiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.al, align 8, !noalias !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 ptrtoint (ptr @_ZN15QAbstractSlider15actionTriggeredEi to i64), ptr %i.am, align 8, !noalias !19
  %.repack7.i.i50 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 0, ptr %.repack7.i.i50, align 8, !noalias !19
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %6, ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.ak, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15QAbstractSlider16staticMetaObjectE)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #11
  ret void

7:                                                ; preds = %bb.a
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %.noexc51, %bb.n, %.noexc42, %bb.m, %.noexc34, %bb.l, %.noexc, %bb.k, %bb.b, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink = phi ptr [ %i.z, %bb.r ], [ %i.x, %bb.q ]
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %i.ao, %bb.q ]
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef 16) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %.pn.ph, %bb.s ]
  call void @_ZN5QListIiED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.o) #11
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.l) #11
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.k) #11
  call void @_ZN10QScrollBarD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable_or_null(40) %i.j) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %7
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %8, %7 ]
  call void @_ZN10QScrollBarD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #11
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QScrollBarC2EN2Qt11OrientationEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QScrollBarC1EN2Qt11OrientationEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QImageC1Ev(ptr noundef align 8 dereferenceable_or_null(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget8setStyleEP6QStyle(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBar16updateChildStyleEv(ptr noundef align 8 dereferenceable_or_null(196) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.c = tail call noundef ptr @_ZN12QApplication5styleEv()
  call void @_ZNK6QStyle4nameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, ptr noundef align 8 dereferenceable_or_null(16) %i.c)
  %i.d = invoke noundef ptr @_ZN13QStyleFactory6createERK7QString(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11QProxyStyle12setBaseStyleEP6QStyle(ptr noundef align 8 dereferenceable_or_null(16) %i.b, ptr noundef %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.g = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.a, align 8
  call void @_ZN7QWidget8setStyleEP6QStyle(ptr noundef align 8 dereferenceable_or_null(40) %i.h, ptr noundef %i.i)
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i2, label %_ZN7QStringD2Ev.exit5, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3:     ; preds = %bb.e
  %i.l = atomicrmw add ptr %i.k, i32 -1 acq_rel, align 4
  %.not.i.i4 = icmp eq i32 %i.l, 1
  br i1 %.not.i.i4, label %bb.f, label %_ZN7QStringD2Ev.exit5

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3
  %i.m = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit5

_ZN7QStringD2Ev.exit5:                            ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  resume { ptr, i32 } %i.j
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget5raiseEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject18installEventFilterEPS_(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractSlider12rangeChangedEii(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16OverlayScrollBar13setChildRangeEii(ptr noundef align 8 dereferenceable_or_null(196) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  tail call void @_ZN15QAbstractSlider8setRangeEii(ptr noundef align 8 dereferenceable_or_null(40) %i.a, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractSlider12valueChangedEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractSlider8setValueEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractSlider15actionTriggeredEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListIiED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerIiED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i:         ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerIiED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 4, i64 noundef 8) #11
  br label %_ZN17QArrayDataPointerIiED2Ev.exit

_ZN17QArrayDataPointerIiED2Ev.exit:               ; preds = %bb.a, %_ZN17QArrayDataPointerIiE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QImageD1Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24)) unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QScrollBarD1Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QScrollBarD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #2

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN16OverlayScrollBarD2Ev(ptr noundef align 8 dead_on_return(196) dereferenceable_or_null(196) initializes((0, 8), (16, 24)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 440) (i8, ptr @_ZTV16OverlayScrollBar, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV16OverlayScrollBar, i64 472), ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.c) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.i) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5QListIiED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i:       ; preds = %bb.e
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.p, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN5QListIiED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i
  %i.q = load ptr, ptr %i.n, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.q, i64 noundef 4, i64 noundef 8) #11
  br label %_ZN5QListIiED2Ev.exit

_ZN5QListIiED2Ev.exit:                            ; preds = %bb.e, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i, %bb.f
end_hunk_0
